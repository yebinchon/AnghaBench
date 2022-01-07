; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/extr_debug.c_do_waitcpu.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/extr_debug.c_do_waitcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdb_cpu = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"waitcpu: missing arg\0A\00", align 1
@CMDRET_DONE = common dso_local global i32 0, align 4
@CMDRET_CONT_REDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pdb_cpu*, i8*)* @do_waitcpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_waitcpu(%struct.pdb_cpu* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pdb_cpu*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [32 x i8], align 16
  store %struct.pdb_cpu* %0, %struct.pdb_cpu** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @get_arg(i8* %7, i32 32, i8* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @CMDRET_DONE, align 4
  store i32 %13, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %16 = load %struct.pdb_cpu*, %struct.pdb_cpu** %4, align 8
  %17 = getelementptr inbounds %struct.pdb_cpu, %struct.pdb_cpu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @strcmp(i8* %15, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @CMDRET_DONE, align 4
  store i32 %22, i32* %3, align 4
  br label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @CMDRET_CONT_REDO, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %21, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @get_arg(i8*, i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
