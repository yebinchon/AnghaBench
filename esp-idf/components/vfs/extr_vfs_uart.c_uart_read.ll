; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_uart.c_uart_read.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs_uart.c_uart_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@s_ctx = common dso_local global %struct.TYPE_2__** null, align 8
@ESP_LINE_ENDINGS_CR = common dso_local global i64 0, align 8
@ESP_LINE_ENDINGS_CRLF = common dso_local global i64 0, align 8
@NONE = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64)* @uart_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uart_read(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 3
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i1 [ false, %3 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %8, align 8
  store i64 0, i64* %9, align 8
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @s_ctx, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i32 @_lock_acquire_recursive(i32* %27)
  br label %29

29:                                               ; preds = %97, %17
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %98

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @uart_read_char(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 13
  br i1 %37, label %38, label %80

38:                                               ; preds = %33
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @s_ctx, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ESP_LINE_ENDINGS_CR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 10, i32* %10, align 4
  br label %79

49:                                               ; preds = %38
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @s_ctx, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 %52
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ESP_LINE_ENDINGS_CRLF, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %49
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @uart_read_char(i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @NONE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @uart_return_char(i32 %66, i32 %67)
  br label %98

69:                                               ; preds = %59
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %70, 10
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 10, i32* %10, align 4
  br label %77

73:                                               ; preds = %69
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @uart_return_char(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %72
  br label %78

78:                                               ; preds = %77, %49
  br label %79

79:                                               ; preds = %78, %48
  br label %86

80:                                               ; preds = %33
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @NONE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %98

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %79
  %87 = load i32, i32* %10, align 4
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8 %88, i8* %91, align 1
  %92 = load i64, i64* %9, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 10
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %98

97:                                               ; preds = %86
  br label %29

98:                                               ; preds = %96, %84, %65, %29
  %99 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @s_ctx, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %99, i64 %101
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = call i32 @_lock_release_recursive(i32* %104)
  %106 = load i64, i64* %9, align 8
  %107 = icmp ugt i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = load i64, i64* %9, align 8
  store i64 %109, i64* %4, align 8
  br label %112

110:                                              ; preds = %98
  %111 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %111, i32* @errno, align 4
  store i64 -1, i64* %4, align 8
  br label %112

112:                                              ; preds = %110, %108
  %113 = load i64, i64* %4, align 8
  ret i64 %113
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_lock_acquire_recursive(i32*) #1

declare dso_local i32 @uart_read_char(i32) #1

declare dso_local i32 @uart_return_char(i32, i32) #1

declare dso_local i32 @_lock_release_recursive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
