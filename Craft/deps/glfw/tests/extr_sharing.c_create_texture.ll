; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_sharing.c_create_texture.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_sharing.c_create_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_LUMINANCE = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_texture() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [65536 x i8], align 16
  %4 = alloca i32, align 4
  %5 = call i32 @glGenTextures(i32 1, i32* %4)
  %6 = load i32, i32* @GL_TEXTURE_2D, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @glBindTexture(i32 %6, i32 %7)
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %30, %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = call i32 (...) @rand()
  %18 = srem i32 %17, 256
  %19 = trunc i32 %18 to i8
  %20 = load i32, i32* %2, align 4
  %21 = mul nsw i32 %20, 256
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [65536 x i8], [65536 x i8]* %3, i64 0, i64 %24
  store i8 %19, i8* %25, align 1
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %13

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %9

33:                                               ; preds = %9
  %34 = load i32, i32* @GL_TEXTURE_2D, align 4
  %35 = load i32, i32* @GL_LUMINANCE, align 4
  %36 = load i32, i32* @GL_LUMINANCE, align 4
  %37 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %38 = getelementptr inbounds [65536 x i8], [65536 x i8]* %3, i64 0, i64 0
  %39 = call i32 @glTexImage2D(i32 %34, i32 0, i32 %35, i32 256, i32 256, i32 0, i32 %36, i32 %37, i8* %38)
  %40 = load i32, i32* @GL_TEXTURE_2D, align 4
  %41 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %42 = load i32, i32* @GL_LINEAR, align 4
  %43 = call i32 @glTexParameteri(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* @GL_TEXTURE_2D, align 4
  %45 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %46 = load i32, i32* @GL_LINEAR, align 4
  %47 = call i32 @glTexParameteri(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @glGenTextures(i32, i32*) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @glTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @glTexParameteri(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
