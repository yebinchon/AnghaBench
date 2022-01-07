; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_ctl.c_ctl_byname.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_ctl.c_ctl_byname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i64*, i64, i8*, i64*, i8*, i64)* }

@CTL_MAX_DEPTH = common dso_local global i32 0, align 4
@ctl_initialized = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_byname(i8* %0, i8* %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load i32, i32* @CTL_MAX_DEPTH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i32*, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* @CTL_MAX_DEPTH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %24 = load i32, i32* @ctl_initialized, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %5
  %27 = call i64 (...) @ctl_init()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @EAGAIN, align 4
  store i32 %30, i32* %11, align 4
  br label %65

31:                                               ; preds = %26, %5
  %32 = load i32, i32* @CTL_MAX_DEPTH, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %12, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @ctl_lookup(i8* %34, i32** %20, i64* %23, i64* %12)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %65

39:                                               ; preds = %31
  %40 = load i64, i64* %12, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i32*, i32** %20, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call %struct.TYPE_3__* @ctl_named_node(i32* %43)
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %16, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %46 = icmp ne %struct.TYPE_3__* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %39
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (i64*, i64, i8*, i64*, i8*, i64)*, i32 (i64*, i64, i8*, i64*, i8*, i64)** %49, align 8
  %51 = icmp ne i32 (i64*, i64, i8*, i64*, i8*, i64)* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (i64*, i64, i8*, i64*, i8*, i64)*, i32 (i64*, i64, i8*, i64*, i8*, i64)** %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 %55(i64* %23, i64 %56, i8* %57, i64* %58, i8* %59, i64 %60)
  store i32 %61, i32* %11, align 4
  br label %64

62:                                               ; preds = %47, %39
  %63 = load i32, i32* @ENOENT, align 4
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %52
  br label %65

65:                                               ; preds = %64, %38, %29
  %66 = load i32, i32* %11, align 4
  %67 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %67)
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ctl_init(...) #2

declare dso_local i32 @ctl_lookup(i8*, i32**, i64*, i64*) #2

declare dso_local %struct.TYPE_3__* @ctl_named_node(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
