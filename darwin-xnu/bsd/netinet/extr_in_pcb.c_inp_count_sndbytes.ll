; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_count_sndbytes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_count_sndbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IFNET_SUBFAMILY_WIFI = common dso_local global i64 0, align 8
@IFT_CELLULAR = common dso_local global i64 0, align 8
@SB_SNDBYTE_CNT = common dso_local global i32 0, align 4
@SOF_MP_SUBFLOW = common dso_local global i32 0, align 4

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
