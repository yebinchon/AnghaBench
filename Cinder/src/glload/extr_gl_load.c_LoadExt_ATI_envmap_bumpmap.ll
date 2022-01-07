; ModuleID = '/home/carl/AnghaBench/Cinder/src/glload/extr_gl_load.c_LoadExt_ATI_envmap_bumpmap.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glload/extr_gl_load.c_LoadExt_ATI_envmap_bumpmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"glGetTexBumpParameterfvATI\00", align 1
@_funcptr_glGetTexBumpParameterfvATI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"glGetTexBumpParameterivATI\00", align 1
@_funcptr_glGetTexBumpParameterivATI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"glTexBumpParameterfvATI\00", align 1
@_funcptr_glTexBumpParameterfvATI = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"glTexBumpParameterivATI\00", align 1
@_funcptr_glTexBumpParameterivATI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @LoadExt_ATI_envmap_bumpmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadExt_ATI_envmap_bumpmap() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i64 %2, i64* @_funcptr_glGetTexBumpParameterfvATI, align 8
  %3 = load i64, i64* @_funcptr_glGetTexBumpParameterfvATI, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* %1, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %1, align 4
  br label %8

8:                                                ; preds = %5, %0
  %9 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i64 %9, i64* @_funcptr_glGetTexBumpParameterivATI, align 8
  %10 = load i64, i64* @_funcptr_glGetTexBumpParameterivATI, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %12, %8
  %16 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i64 %16, i64* @_funcptr_glTexBumpParameterfvATI, align 8
  %17 = load i64, i64* @_funcptr_glTexBumpParameterfvATI, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i64 %23, i64* @_funcptr_glTexBumpParameterivATI, align 8
  %24 = load i64, i64* @_funcptr_glTexBumpParameterivATI, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i64 @IntGetProcAddress(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
