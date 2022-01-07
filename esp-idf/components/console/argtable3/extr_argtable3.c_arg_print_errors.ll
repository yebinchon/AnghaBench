; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_print_errors.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_print_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_end = type { i32, i32*, i32*, i64* }
%struct.arg_hdr = type { i32 (i64, i32*, i32, i32, i8*)* }

@.str = private unnamed_addr constant [14 x i8] c"arg_errors()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arg_print_errors(i32* %0, %struct.arg_end* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.arg_end*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.arg_hdr*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.arg_end* %1, %struct.arg_end** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call i32 @ARG_TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %58, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %13 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %10
  %17 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %18 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %17, i32 0, i32 3
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.arg_hdr*
  store %struct.arg_hdr* %24, %struct.arg_hdr** %8, align 8
  %25 = load %struct.arg_hdr*, %struct.arg_hdr** %8, align 8
  %26 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %25, i32 0, i32 0
  %27 = load i32 (i64, i32*, i32, i32, i8*)*, i32 (i64, i32*, i32, i32, i8*)** %26, align 8
  %28 = icmp ne i32 (i64, i32*, i32, i32, i8*)* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %16
  %30 = load %struct.arg_hdr*, %struct.arg_hdr** %8, align 8
  %31 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %30, i32 0, i32 0
  %32 = load i32 (i64, i32*, i32, i32, i8*)*, i32 (i64, i32*, i32, i32, i8*)** %31, align 8
  %33 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %34 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %33, i32 0, i32 3
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %42 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.arg_end*, %struct.arg_end** %5, align 8
  %49 = getelementptr inbounds %struct.arg_end, %struct.arg_end* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 %32(i64 %39, i32* %40, i32 %47, i32 %54, i8* %55)
  br label %57

57:                                               ; preds = %29, %16
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %10

61:                                               ; preds = %10
  ret void
}

declare dso_local i32 @ARG_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
