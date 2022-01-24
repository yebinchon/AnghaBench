import argparse
import sys
import os
import glob
from joblib import Parallel, delayed

count = 0

def traverse_tree(path, config):
  start_path = os.path.join(config['root_path'], path)
  os.chdir(start_path)
  bmark_set = set(glob.glob("*_MASK.c"))
  bmark_set.update(set(glob.glob("*_MASK.cc")))
  bmark_set.update(set(glob.glob("*_MASK.cpp")))
  global count
  count  = count + len(bmark_set)
  config['dir_list'].append(path)
  
  for x in os.listdir(start_path):
    d = os.path.join(path, x)
    if os.path.isdir(os.path.join(config['root_path'], d)):
      traverse_tree(d, config)

  return

def set_config():
  parser = argparse.ArgumentParser()

  parser.add_argument("-d", "--directory", type=str, help="Specify directory")
  parser.add_argument("-c", "--core_num", type=int, default=10, help="Number of cores")

  args = parser.parse_args()

  config = {}
  config['root_path'] = "/scratch/yc0769/xstack-benchmark/AnghaBench_masked"
  config['result_root_path'] = "/scratch/yc0769/xstack-benchmark/AnghaBench_masked"
  config['dir_list'] = []
  if(args.directory):
    config['path'] = args.directory
  else:
    config['path'] = "."

  return config

if __name__ == "__main__":
  config = set_config()
  if not config:
    print("Bad configuration, please start over.")
    sys.exit(1)

  print("\n### Collecting directories... ###")
  
  traverse_tree(config['path'], config)
  print(len(config['dir_list']))
  print(count)
