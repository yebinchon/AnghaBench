; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_misc.c_M_ReadFile.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_misc.c_M_ReadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Couldn't read file %s\00", align 1
@PU_STATIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @M_ReadFile(i8* %0, i32** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32** %1, i32*** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = load i32, i32* @O_BINARY, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @open(i8* %10, i32 %13, i32 438)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @I_Error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @fstat(i32 %21, %struct.stat* %8)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @I_Error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @PU_STATIC, align 4
  %32 = call i32* @Z_Malloc(i32 %30, i32 %31, i32* null)
  store i32* %32, i32** %9, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @read(i32 %33, i32* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @close(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %27
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @I_Error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %42, %27
  %46 = load i32*, i32** %9, align 8
  %47 = load i32**, i32*** %4, align 8
  store i32* %46, i32** %47, align 8
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @I_Error(i8*, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32* @Z_Malloc(i32, i32, i32*) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
