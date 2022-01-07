; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_sbuf.c_sbuf_bcat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_sbuf.c_sbuf_bcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32, i32* }

@SBUF_OVERFLOWED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbuf_bcat(%struct.sbuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  store i8* %9, i8** %8, align 8
  %10 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %11 = call i32 @assert_sbuf_integrity(%struct.sbuf* %10)
  %12 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %13 = call i32 @assert_sbuf_state(%struct.sbuf* %12, i32 0)
  %14 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %15 = call i64 @SBUF_HASOVERFLOWED(%struct.sbuf* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %46, %18
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %24 = call i32 @SBUF_HASROOM(%struct.sbuf* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @sbuf_extend(%struct.sbuf* %27, i64 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %49

32:                                               ; preds = %26, %22
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %8, align 8
  %35 = load i8, i8* %33, align 1
  %36 = sext i8 %35 to i32
  %37 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %38 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %41 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  store i32 %36, i32* %45, align 4
  br label %46

46:                                               ; preds = %32
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %7, align 8
  br label %19

49:                                               ; preds = %31, %19
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %54 = load i32, i32* @SBUF_OVERFLOWED, align 4
  %55 = call i32 @SBUF_SETFLAG(%struct.sbuf* %53, i32 %54)
  store i32 -1, i32* %4, align 4
  br label %57

56:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %52, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @assert_sbuf_integrity(%struct.sbuf*) #1

declare dso_local i32 @assert_sbuf_state(%struct.sbuf*, i32) #1

declare dso_local i64 @SBUF_HASOVERFLOWED(%struct.sbuf*) #1

declare dso_local i32 @SBUF_HASROOM(%struct.sbuf*) #1

declare dso_local i64 @sbuf_extend(%struct.sbuf*, i64) #1

declare dso_local i32 @SBUF_SETFLAG(%struct.sbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
