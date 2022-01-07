; ModuleID = '/home/carl/AnghaBench/GloVe/src/extr_glove.c_main.c'
source_filename = "/home/carl/AnghaBench/GloVe/src/extr_glove.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_STRING_LENGTH = common dso_local global i32 0, align 4
@vocab_file = common dso_local global i8* null, align 8
@input_file = common dso_local global i8* null, align 8
@save_W_file = common dso_local global i8* null, align 8
@save_gradsq_file = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"GloVe: Global Vectors for Word Representation, v0.2\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Author: Jeffrey Pennington (jpennin@stanford.edu)\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Usage options:\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\09-verbose <int>\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\09\09Set verbosity: 0, 1, or 2 (default)\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"\09-write-header <int>\0A\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"\09\09If 1, write vocab_size/vector_size as first line. Do nothing if 0 (default).\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"\09-vector-size <int>\0A\00", align 1
@.str.8 = private unnamed_addr constant [78 x i8] c"\09\09Dimension of word vector representations (excluding bias term); default 50\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"\09-threads <int>\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"\09\09Number of threads; default 8\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"\09-iter <int>\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"\09\09Number of training iterations; default 25\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"\09-eta <float>\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"\09\09Initial learning rate; default 0.05\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"\09-alpha <float>\0A\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"\09\09Parameter in exponent of weighting function; default 0.75\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"\09-x-max <float>\0A\00", align 1
@.str.18 = private unnamed_addr constant [68 x i8] c"\09\09Parameter specifying cutoff in weighting function; default 100.0\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"\09-binary <int>\0A\00", align 1
@.str.20 = private unnamed_addr constant [73 x i8] c"\09\09Save output in binary format (0: text, 1: binary, 2: both); default 0\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"\09-model <int>\0A\00", align 1
@.str.22 = private unnamed_addr constant [66 x i8] c"\09\09Model for word vector output (for text output only); default 2\0A\00", align 1
@.str.23 = private unnamed_addr constant [87 x i8] c"\09\09   0: output all data, for both word and context word vectors, including bias terms\0A\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"\09\09   1: output word vectors, excluding bias terms\0A\00", align 1
@.str.25 = private unnamed_addr constant [74 x i8] c"\09\09   2: output word vectors + context word vectors, excluding bias terms\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"\09-input-file <file>\0A\00", align 1
@.str.27 = private unnamed_addr constant [120 x i8] c"\09\09Binary input file of shuffled cooccurrence data (produced by 'cooccur' and 'shuffle'); default cooccurrence.shuf.bin\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"\09-vocab-file <file>\0A\00", align 1
@.str.29 = private unnamed_addr constant [103 x i8] c"\09\09File containing vocabulary (truncated unigram counts, produced by 'vocab_count'); default vocab.txt\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"\09-save-file <file>\0A\00", align 1
@.str.31 = private unnamed_addr constant [74 x i8] c"\09\09Filename, excluding extension, for word vector output; default vectors\0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"\09-gradsq-file <file>\0A\00", align 1
@.str.33 = private unnamed_addr constant [78 x i8] c"\09\09Filename, excluding extension, for squared gradient output; default gradsq\0A\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"\09-save-gradsq <int>\0A\00", align 1
@.str.35 = private unnamed_addr constant [92 x i8] c"\09\09Save accumulated squared gradients; default 0 (off); ignored if gradsq-file is specified\0A\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"\09-checkpoint-every <int>\0A\00", align 1
@.str.37 = private unnamed_addr constant [63 x i8] c"\09\09Checkpoint a  model every <int> iterations; default 0 (off)\0A\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"\0AExample usage:\0A\00", align 1
@.str.39 = private unnamed_addr constant [199 x i8] c"./glove -input-file cooccurrence.shuf.bin -vocab-file vocab.txt -save-file vectors -gradsq-file gradsq -verbose 2 -vector-size 100 -threads 16 -alpha 0.75 -x-max 100.0 -eta 0.05 -binary 2 -model 2\0A\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"-write-header\00", align 1
@write_header = common dso_local global i8* null, align 8
@.str.41 = private unnamed_addr constant [9 x i8] c"-verbose\00", align 1
@verbose = common dso_local global i8* null, align 8
@.str.42 = private unnamed_addr constant [13 x i8] c"-vector-size\00", align 1
@vector_size = common dso_local global i8* null, align 8
@.str.43 = private unnamed_addr constant [6 x i8] c"-iter\00", align 1
@num_iter = common dso_local global i8* null, align 8
@.str.44 = private unnamed_addr constant [9 x i8] c"-threads\00", align 1
@num_threads = common dso_local global i32 0, align 4
@cost = common dso_local global i8* null, align 8
@.str.45 = private unnamed_addr constant [7 x i8] c"-alpha\00", align 1
@alpha = common dso_local global i8* null, align 8
@.str.46 = private unnamed_addr constant [7 x i8] c"-x-max\00", align 1
@x_max = common dso_local global i8* null, align 8
@.str.47 = private unnamed_addr constant [5 x i8] c"-eta\00", align 1
@eta = common dso_local global i8* null, align 8
@.str.48 = private unnamed_addr constant [8 x i8] c"-binary\00", align 1
@use_binary = common dso_local global i8* null, align 8
@.str.49 = private unnamed_addr constant [7 x i8] c"-model\00", align 1
@model = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [13 x i8] c"-save-gradsq\00", align 1
@save_gradsq = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [12 x i8] c"-vocab-file\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"vocab.txt\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"-save-file\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"vectors\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"-gradsq-file\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"gradsq\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"-input-file\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"cooccurrence.shuf.bin\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"-checkpoint-every\00", align 1
@checkpoint_every = common dso_local global i8* null, align 8
@vocab_size = common dso_local global i64 0, align 8
@.str.60 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.61 = private unnamed_addr constant [31 x i8] c"Unable to open vocab file %s.\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.62 = private unnamed_addr constant [52 x i8] c"Unable to find any vocab entries in vocab file %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @MAX_STRING_LENGTH, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 1, %10
  %12 = trunc i64 %11 to i32
  %13 = call i8* @malloc(i32 %12)
  store i8* %13, i8** @vocab_file, align 8
  %14 = load i32, i32* @MAX_STRING_LENGTH, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 1, %15
  %17 = trunc i64 %16 to i32
  %18 = call i8* @malloc(i32 %17)
  store i8* %18, i8** @input_file, align 8
  %19 = load i32, i32* @MAX_STRING_LENGTH, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 1, %20
  %22 = trunc i64 %21 to i32
  %23 = call i8* @malloc(i32 %22)
  store i8* %23, i8** @save_W_file, align 8
  %24 = load i32, i32* @MAX_STRING_LENGTH, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 1, %25
  %27 = trunc i64 %26 to i32
  %28 = call i8* @malloc(i32 %27)
  store i8* %28, i8** @save_gradsq_file, align 8
  store i32 0, i32* %8, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %72

31:                                               ; preds = %2
  %32 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %37 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %38 = call i32 @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0))
  %39 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %40 = call i32 @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.8, i64 0, i64 0))
  %41 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %42 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %43 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %44 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0))
  %45 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %46 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  %47 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %48 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0))
  %49 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %50 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.18, i64 0, i64 0))
  %51 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  %52 = call i32 @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.20, i64 0, i64 0))
  %53 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %54 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.22, i64 0, i64 0))
  %55 = call i32 @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.23, i64 0, i64 0))
  %56 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24, i64 0, i64 0))
  %57 = call i32 @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.25, i64 0, i64 0))
  %58 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0))
  %59 = call i32 @printf(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.27, i64 0, i64 0))
  %60 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0))
  %61 = call i32 @printf(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.29, i64 0, i64 0))
  %62 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0))
  %63 = call i32 @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.31, i64 0, i64 0))
  %64 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0))
  %65 = call i32 @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.33, i64 0, i64 0))
  %66 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0))
  %67 = call i32 @printf(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.35, i64 0, i64 0))
  %68 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i64 0, i64 0))
  %69 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.37, i64 0, i64 0))
  %70 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0))
  %71 = call i32 @printf(i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.39, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %350

72:                                               ; preds = %2
  %73 = load i32, i32* %4, align 4
  %74 = load i8**, i8*** %5, align 8
  %75 = call i32 @find_arg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 %73, i8** %74)
  store i32 %75, i32* %6, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %78, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @atoi(i8* %83)
  store i8* %84, i8** @write_header, align 8
  br label %85

85:                                               ; preds = %77, %72
  %86 = load i32, i32* %4, align 4
  %87 = load i8**, i8*** %5, align 8
  %88 = call i32 @find_arg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i32 %86, i8** %87)
  store i32 %88, i32* %6, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load i8**, i8*** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %91, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @atoi(i8* %96)
  store i8* %97, i8** @verbose, align 8
  br label %98

98:                                               ; preds = %90, %85
  %99 = load i32, i32* %4, align 4
  %100 = load i8**, i8*** %5, align 8
  %101 = call i32 @find_arg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), i32 %99, i8** %100)
  store i32 %101, i32* %6, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i8**, i8*** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %104, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @atoi(i8* %109)
  store i8* %110, i8** @vector_size, align 8
  br label %111

111:                                              ; preds = %103, %98
  %112 = load i32, i32* %4, align 4
  %113 = load i8**, i8*** %5, align 8
  %114 = call i32 @find_arg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i32 %112, i8** %113)
  store i32 %114, i32* %6, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load i8**, i8*** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %117, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i8* @atoi(i8* %122)
  store i8* %123, i8** @num_iter, align 8
  br label %124

124:                                              ; preds = %116, %111
  %125 = load i32, i32* %4, align 4
  %126 = load i8**, i8*** %5, align 8
  %127 = call i32 @find_arg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i32 %125, i8** %126)
  store i32 %127, i32* %6, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %124
  %130 = load i8**, i8*** %5, align 8
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %130, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i8* @atoi(i8* %135)
  %137 = ptrtoint i8* %136 to i32
  store i32 %137, i32* @num_threads, align 4
  br label %138

138:                                              ; preds = %129, %124
  %139 = load i32, i32* @num_threads, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 4, %140
  %142 = trunc i64 %141 to i32
  %143 = call i8* @malloc(i32 %142)
  store i8* %143, i8** @cost, align 8
  %144 = load i32, i32* %4, align 4
  %145 = load i8**, i8*** %5, align 8
  %146 = call i32 @find_arg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i32 %144, i8** %145)
  store i32 %146, i32* %6, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %138
  %149 = load i8**, i8*** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %149, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = call i8* @atof(i8* %154)
  store i8* %155, i8** @alpha, align 8
  br label %156

156:                                              ; preds = %148, %138
  %157 = load i32, i32* %4, align 4
  %158 = load i8**, i8*** %5, align 8
  %159 = call i32 @find_arg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i32 %157, i8** %158)
  store i32 %159, i32* %6, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %156
  %162 = load i8**, i8*** %5, align 8
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %162, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i8* @atof(i8* %167)
  store i8* %168, i8** @x_max, align 8
  br label %169

169:                                              ; preds = %161, %156
  %170 = load i32, i32* %4, align 4
  %171 = load i8**, i8*** %5, align 8
  %172 = call i32 @find_arg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i32 %170, i8** %171)
  store i32 %172, i32* %6, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %169
  %175 = load i8**, i8*** %5, align 8
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %175, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = call i8* @atof(i8* %180)
  store i8* %181, i8** @eta, align 8
  br label %182

182:                                              ; preds = %174, %169
  %183 = load i32, i32* %4, align 4
  %184 = load i8**, i8*** %5, align 8
  %185 = call i32 @find_arg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), i32 %183, i8** %184)
  store i32 %185, i32* %6, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %182
  %188 = load i8**, i8*** %5, align 8
  %189 = load i32, i32* %6, align 4
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %188, i64 %191
  %193 = load i8*, i8** %192, align 8
  %194 = call i8* @atoi(i8* %193)
  store i8* %194, i8** @use_binary, align 8
  br label %195

195:                                              ; preds = %187, %182
  %196 = load i32, i32* %4, align 4
  %197 = load i8**, i8*** %5, align 8
  %198 = call i32 @find_arg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0), i32 %196, i8** %197)
  store i32 %198, i32* %6, align 4
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %195
  %201 = load i8**, i8*** %5, align 8
  %202 = load i32, i32* %6, align 4
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %201, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = call i8* @atoi(i8* %206)
  %208 = ptrtoint i8* %207 to i32
  store i32 %208, i32* @model, align 4
  br label %209

209:                                              ; preds = %200, %195
  %210 = load i32, i32* @model, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load i32, i32* @model, align 4
  %214 = icmp ne i32 %213, 1
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  store i32 2, i32* @model, align 4
  br label %216

216:                                              ; preds = %215, %212, %209
  %217 = load i32, i32* %4, align 4
  %218 = load i8**, i8*** %5, align 8
  %219 = call i32 @find_arg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i64 0, i64 0), i32 %217, i8** %218)
  store i32 %219, i32* %6, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %216
  %222 = load i8**, i8*** %5, align 8
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %222, i64 %225
  %227 = load i8*, i8** %226, align 8
  %228 = call i8* @atoi(i8* %227)
  %229 = ptrtoint i8* %228 to i32
  store i32 %229, i32* @save_gradsq, align 4
  br label %230

230:                                              ; preds = %221, %216
  %231 = load i32, i32* %4, align 4
  %232 = load i8**, i8*** %5, align 8
  %233 = call i32 @find_arg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i32 %231, i8** %232)
  store i32 %233, i32* %6, align 4
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %230
  %236 = load i8*, i8** @vocab_file, align 8
  %237 = load i8**, i8*** %5, align 8
  %238 = load i32, i32* %6, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %237, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @strcpy(i8* %236, i8* %242)
  br label %247

244:                                              ; preds = %230
  %245 = load i8*, i8** @vocab_file, align 8
  %246 = call i32 @strcpy(i8* %245, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0))
  br label %247

247:                                              ; preds = %244, %235
  %248 = load i32, i32* %4, align 4
  %249 = load i8**, i8*** %5, align 8
  %250 = call i32 @find_arg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0), i32 %248, i8** %249)
  store i32 %250, i32* %6, align 4
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %247
  %253 = load i8*, i8** @save_W_file, align 8
  %254 = load i8**, i8*** %5, align 8
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8*, i8** %254, i64 %257
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @strcpy(i8* %253, i8* %259)
  br label %264

261:                                              ; preds = %247
  %262 = load i8*, i8** @save_W_file, align 8
  %263 = call i32 @strcpy(i8* %262, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0))
  br label %264

264:                                              ; preds = %261, %252
  %265 = load i32, i32* %4, align 4
  %266 = load i8**, i8*** %5, align 8
  %267 = call i32 @find_arg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i64 0, i64 0), i32 %265, i8** %266)
  store i32 %267, i32* %6, align 4
  %268 = icmp sgt i32 %267, 0
  br i1 %268, label %269, label %278

269:                                              ; preds = %264
  %270 = load i8*, i8** @save_gradsq_file, align 8
  %271 = load i8**, i8*** %5, align 8
  %272 = load i32, i32* %6, align 4
  %273 = add nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %271, i64 %274
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @strcpy(i8* %270, i8* %276)
  store i32 1, i32* @save_gradsq, align 4
  br label %285

278:                                              ; preds = %264
  %279 = load i32, i32* @save_gradsq, align 4
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load i8*, i8** @save_gradsq_file, align 8
  %283 = call i32 @strcpy(i8* %282, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0))
  br label %284

284:                                              ; preds = %281, %278
  br label %285

285:                                              ; preds = %284, %269
  %286 = load i32, i32* %4, align 4
  %287 = load i8**, i8*** %5, align 8
  %288 = call i32 @find_arg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0), i32 %286, i8** %287)
  store i32 %288, i32* %6, align 4
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %285
  %291 = load i8*, i8** @input_file, align 8
  %292 = load i8**, i8*** %5, align 8
  %293 = load i32, i32* %6, align 4
  %294 = add nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8*, i8** %292, i64 %295
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @strcpy(i8* %291, i8* %297)
  br label %302

299:                                              ; preds = %285
  %300 = load i8*, i8** @input_file, align 8
  %301 = call i32 @strcpy(i8* %300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i64 0, i64 0))
  br label %302

302:                                              ; preds = %299, %290
  %303 = load i32, i32* %4, align 4
  %304 = load i8**, i8*** %5, align 8
  %305 = call i32 @find_arg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i64 0, i64 0), i32 %303, i8** %304)
  store i32 %305, i32* %6, align 4
  %306 = icmp sgt i32 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %302
  %308 = load i8**, i8*** %5, align 8
  %309 = load i32, i32* %6, align 4
  %310 = add nsw i32 %309, 1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8*, i8** %308, i64 %311
  %313 = load i8*, i8** %312, align 8
  %314 = call i8* @atoi(i8* %313)
  store i8* %314, i8** @checkpoint_every, align 8
  br label %315

315:                                              ; preds = %307, %302
  store i64 0, i64* @vocab_size, align 8
  %316 = load i8*, i8** @vocab_file, align 8
  %317 = call i32* @fopen(i8* %316, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0))
  store i32* %317, i32** %7, align 8
  %318 = load i32*, i32** %7, align 8
  %319 = icmp eq i32* %318, null
  br i1 %319, label %320, label %324

320:                                              ; preds = %315
  %321 = load i32, i32* @stderr, align 4
  %322 = load i8*, i8** @vocab_file, align 8
  %323 = call i32 @fprintf(i32 %321, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.61, i64 0, i64 0), i8* %322)
  store i32 1, i32* %3, align 4
  br label %360

324:                                              ; preds = %315
  br label %325

325:                                              ; preds = %336, %324
  %326 = load i32*, i32** %7, align 8
  %327 = call i32 @getc(i32* %326)
  store i32 %327, i32* %6, align 4
  %328 = load i32, i32* @EOF, align 4
  %329 = icmp ne i32 %327, %328
  br i1 %329, label %330, label %337

330:                                              ; preds = %325
  %331 = load i32, i32* %6, align 4
  %332 = icmp eq i32 %331, 10
  br i1 %332, label %333, label %336

333:                                              ; preds = %330
  %334 = load i64, i64* @vocab_size, align 8
  %335 = add nsw i64 %334, 1
  store i64 %335, i64* @vocab_size, align 8
  br label %336

336:                                              ; preds = %333, %330
  br label %325

337:                                              ; preds = %325
  %338 = load i32*, i32** %7, align 8
  %339 = call i32 @fclose(i32* %338)
  %340 = load i64, i64* @vocab_size, align 8
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %337
  %343 = load i32, i32* @stderr, align 4
  %344 = load i8*, i8** @vocab_file, align 8
  %345 = call i32 @fprintf(i32 %343, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.62, i64 0, i64 0), i8* %344)
  store i32 1, i32* %3, align 4
  br label %360

346:                                              ; preds = %337
  %347 = call i32 (...) @train_glove()
  store i32 %347, i32* %8, align 4
  %348 = load i8*, i8** @cost, align 8
  %349 = call i32 @free(i8* %348)
  br label %350

350:                                              ; preds = %346, %31
  %351 = load i8*, i8** @vocab_file, align 8
  %352 = call i32 @free(i8* %351)
  %353 = load i8*, i8** @input_file, align 8
  %354 = call i32 @free(i8* %353)
  %355 = load i8*, i8** @save_W_file, align 8
  %356 = call i32 @free(i8* %355)
  %357 = load i8*, i8** @save_gradsq_file, align 8
  %358 = call i32 @free(i8* %357)
  %359 = load i32, i32* %8, align 4
  store i32 %359, i32* %3, align 4
  br label %360

360:                                              ; preds = %350, %342, %320
  %361 = load i32, i32* %3, align 4
  ret i32 %361
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @find_arg(i8*, i32, i8**) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i8* @atof(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @train_glove(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
