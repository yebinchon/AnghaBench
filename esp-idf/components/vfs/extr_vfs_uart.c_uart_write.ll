; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_uart.c_uart_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_uart.c_uart_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 (i32, i32)* }

@s_ctx = common dso_local global %struct.TYPE_2__** null, align 8
@ESP_LINE_ENDINGS_LF = common dso_local global i64 0, align 8
@ESP_LINE_ENDINGS_CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64)* @uart_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uart_write(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 3
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i1 [ false, %3 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %7, align 8
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @s_ctx, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = call i32 @_lock_acquire_recursive(i32* %25)
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %81, %15
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %84

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %70

39:                                               ; preds = %31
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @s_ctx, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ESP_LINE_ENDINGS_LF, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %39
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @s_ctx, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 %52
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32 (i32, i32)*, i32 (i32, i32)** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 %56(i32 %57, i32 13)
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @s_ctx, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %59, i64 %61
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ESP_LINE_ENDINGS_CR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %49
  br label %81

69:                                               ; preds = %49
  br label %70

70:                                               ; preds = %69, %39, %31
  %71 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @s_ctx, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %71, i64 %73
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32 (i32, i32)*, i32 (i32, i32)** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 %77(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %70, %68
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %8, align 8
  br label %27

84:                                               ; preds = %27
  %85 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @s_ctx, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %85, i64 %87
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = call i32 @_lock_release_recursive(i32* %90)
  %92 = load i64, i64* %6, align 8
  ret i64 %92
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_lock_acquire_recursive(i32*) #1

declare dso_local i32 @_lock_release_recursive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
