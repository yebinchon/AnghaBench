; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_cursor.c_create_cursor_frame.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_cursor.c_create_cursor_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (float)* @create_cursor_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_cursor_frame(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [16384 x i8], align 16
  %7 = alloca %struct.TYPE_3__, align 8
  store float %0, float* %2, align 4
  store i32 0, i32* %3, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 64, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 64, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %11 = getelementptr inbounds [16384 x i8], [16384 x i8]* %6, i64 0, i64 0
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %52, %1
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %48, %19
  %21 = load i32, i32* %4, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds [16384 x i8], [16384 x i8]* %6, i64 0, i64 %28
  store i8 -1, i8* %29, align 1
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds [16384 x i8], [16384 x i8]* %6, i64 0, i64 %32
  store i8 -1, i8* %33, align 1
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds [16384 x i8], [16384 x i8]* %6, i64 0, i64 %36
  store i8 -1, i8* %37, align 1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load float, float* %2, align 4
  %41 = call i32 @star(i32 %38, i32 %39, float %40)
  %42 = mul nsw i32 255, %41
  %43 = trunc i32 %42 to i8
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds [16384 x i8], [16384 x i8]* %6, i64 0, i64 %46
  store i8 %43, i8* %47, align 1
  br label %48

48:                                               ; preds = %25
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %20

51:                                               ; preds = %20
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %14

55:                                               ; preds = %14
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = sdiv i32 %57, 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 2
  %62 = call i32* @glfwCreateCursor(%struct.TYPE_3__* %7, i32 %58, i32 %61)
  ret i32* %62
}

declare dso_local i32 @star(i32, i32, float) #1

declare dso_local i32* @glfwCreateCursor(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
