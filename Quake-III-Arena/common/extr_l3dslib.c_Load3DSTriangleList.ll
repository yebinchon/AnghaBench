; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_l3dslib.c_Load3DSTriangleList.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_l3dslib.c_Load3DSTriangleList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bytesread = common dso_local global i64 0, align 8
@level = common dso_local global i64 0, align 8
@numtris = common dso_local global i64 0, align 8
@totaltris = common dso_local global i32 0, align 4
@vertsfound = common dso_local global i64 0, align 8
@trisfound = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"reader: could not open file '%s'\0A\00", align 1
@MAIN3DS = common dso_local global i16 0, align 2
@EDIT3DS = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [25 x i8] c"File is not a 3DS file.\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@MAXTRIANGLES = common dso_local global i32 0, align 4
@ptri = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Incomplete triangle set\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Load3DSTriangleList(i8* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i16, align 2
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* @bytesread, align 8
  store i64 0, i64* @level, align 8
  store i64 0, i64* @numtris, align 8
  store i32 0, i32* @totaltris, align 4
  store i64 0, i64* @vertsfound, align 8
  store i64 0, i64* @trisfound, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = call i32 @exit(i32 0) #3
  unreachable

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @fread(i16* %8, i32 2, i32 1, i32* %18)
  %20 = load i16, i16* %8, align 2
  %21 = sext i16 %20 to i32
  %22 = load i16, i16* @MAIN3DS, align 2
  %23 = sext i16 %22 to i32
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load i16, i16* %8, align 2
  %27 = sext i16 %26 to i32
  %28 = load i16, i16* @EDIT3DS, align 2
  %29 = sext i16 %28 to i32
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @exit(i32 0) #3
  unreachable

35:                                               ; preds = %25, %17
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* @SEEK_SET, align 4
  %38 = call i32 @fseek(i32* %36, i32 0, i32 %37)
  %39 = load i32, i32* @MAXTRIANGLES, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32* @malloc(i32 %42)
  store i32* %43, i32** @ptri, align 8
  %44 = load i32*, i32** @ptri, align 8
  %45 = load i32**, i32*** %5, align 8
  store i32* %44, i32** %45, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @ParseChunk(i32* %46)
  %48 = load i64, i64* @vertsfound, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %35
  %51 = load i64, i64* @trisfound, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %35
  %54 = call i32 @Error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32, i32* @totaltris, align 4
  %57 = load i32*, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @fclose(i32* %58)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fread(i16*, i32, i32, i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @ParseChunk(i32*) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
