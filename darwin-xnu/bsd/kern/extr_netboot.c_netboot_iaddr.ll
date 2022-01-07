; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_netboot.c_netboot_iaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_netboot.c_netboot_iaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.in_addr }
%struct.in_addr = type { i32 }

@S_netboot_info_p = common dso_local global %struct.TYPE_2__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netboot_iaddr(%struct.in_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in_addr*, align 8
  store %struct.in_addr* %0, %struct.in_addr** %3, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_netboot_info_p, align 8
  %5 = icmp eq %struct.TYPE_2__* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %2, align 4
  br label %15

8:                                                ; preds = %1
  %9 = load %struct.in_addr*, %struct.in_addr** %3, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_netboot_info_p, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast %struct.in_addr* %9 to i8*
  %13 = bitcast %struct.in_addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %8, %6
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
