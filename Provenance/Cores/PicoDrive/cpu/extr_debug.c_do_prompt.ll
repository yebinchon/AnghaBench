; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/extr_debug.c_do_prompt.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/extr_debug.c_do_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdb_cpu = type { i32 }

@do_prompt.prev = internal global [128 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"(pdb) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pdb_cpu*)* @do_prompt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_prompt(%struct.pdb_cpu* %0) #0 {
  %2 = alloca %struct.pdb_cpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.pdb_cpu* %0, %struct.pdb_cpu** %2, align 8
  br label %6

6:                                                ; preds = %1, %31
  %7 = call i8* @my_readline(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %32

11:                                               ; preds = %6
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @do_prompt.prev, i64 0, i64 0), i8** %5, align 8
  br label %22

18:                                               ; preds = %11
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strncpy(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @do_prompt.prev, i64 0, i64 0), i8* %20, i32 128)
  br label %22

22:                                               ; preds = %18, %17
  %23 = load %struct.pdb_cpu*, %struct.pdb_cpu** %2, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @do_comands(%struct.pdb_cpu* %23, i8* %24)
  store i32 %25, i32* %3, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %32

31:                                               ; preds = %22
  br label %6

32:                                               ; preds = %30, %10
  ret void
}

declare dso_local i8* @my_readline(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @do_comands(%struct.pdb_cpu*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
