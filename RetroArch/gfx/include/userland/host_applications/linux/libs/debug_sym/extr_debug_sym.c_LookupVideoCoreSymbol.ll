; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/libs/debug_sym/extr_debug_sym.c_LookupVideoCoreSymbol.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/libs/debug_sym/extr_debug_sym.c_LookupVideoCoreSymbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"%s found, addr = 0x%08x size = %zu\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LookupVideoCoreSymbol(%struct.TYPE_4__* %0, i8* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %47, %4
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %14
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %24 = call i32 @GetVideoCoreSymbol(%struct.TYPE_4__* %21, i32 %22, i8* %23, i32 64, i32* %12, i64* %13)
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %27 = call i64 @strcmp(i8* %25, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %20
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %12, align 4
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i64*, i64** %9, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i64, i64* %13, align 8
  %40 = load i64*, i64** %9, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i64, i64* %13, align 8
  %45 = call i32 (i8*, i8*, ...) @DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43, i64 %44)
  store i32 1, i32* %5, align 4
  br label %63

46:                                               ; preds = %20
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %14

50:                                               ; preds = %14
  %51 = load i32*, i32** %8, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32*, i32** %8, align 8
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i64*, i64** %9, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i64*, i64** %9, align 8
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 (i8*, i8*, ...) @DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %41
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @GetVideoCoreSymbol(%struct.TYPE_4__*, i32, i8*, i32, i32*, i64*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @DBG(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
