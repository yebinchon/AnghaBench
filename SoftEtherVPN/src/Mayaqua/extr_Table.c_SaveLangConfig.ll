; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_SaveLangConfig.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_SaveLangConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@LANG_CONFIG_TEMPLETE = common dso_local global i32 0, align 4
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"# Available Language IDs are:\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i32] [i32 35, i32 32, i32 32, i32 37, i32 83, i32 58, i32 32, i32 37, i32 115, i32 32, i32 40, i32 37, i32 115, i32 41, i32 13, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"\0D\0A\0D\0A# Specify a Language ID here.\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SaveLangConfig(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

16:                                               ; preds = %2
  %17 = load i32, i32* @LANG_CONFIG_TEMPLETE, align 4
  %18 = call %struct.TYPE_11__* @ReadDump(i32 %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %6, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = icmp eq %struct.TYPE_11__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %82

22:                                               ; preds = %16
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SeekBuf(%struct.TYPE_11__* %23, i32 %26, i32 0)
  %28 = call i32* (...) @LoadLangList()
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %75

31:                                               ; preds = %22
  %32 = load i32, i32* @MAX_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %10, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %11, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = call i32 @AppendBufStr(%struct.TYPE_11__* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %38

38:                                               ; preds = %61, %31
  %39 = load i64, i64* %8, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @LIST_NUM(i32* %40)
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %38
  %44 = load i32*, i32** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call %struct.TYPE_10__* @LIST_DATA(i32* %44, i64 %45)
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %12, align 8
  %47 = mul nuw i64 4, %33
  %48 = trunc i64 %47 to i32
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @UniFormat(i32* %35, i32 %48, i8* bitcast ([17 x i32]* @.str.1 to i8*), i32 %51, i32 %54, i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = call i32 @AppendBufUtf8(%struct.TYPE_11__* %59, i32* %35)
  br label %61

61:                                               ; preds = %43
  %62 = load i64, i64* %8, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %8, align 8
  br label %38

64:                                               ; preds = %38
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = call i32 @AppendBufStr(%struct.TYPE_11__* %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @AppendBufStr(%struct.TYPE_11__* %67, i8* %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = call i32 @AppendBufStr(%struct.TYPE_11__* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @FreeLangList(i32* %72)
  %74 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %74)
  br label %75

75:                                               ; preds = %64, %22
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @DumpBufWIfNecessary(%struct.TYPE_11__* %76, i32* %77)
  store i32 %78, i32* %9, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = call i32 @FreeBuf(%struct.TYPE_11__* %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %75, %21, %15
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_11__* @ReadDump(i32) #1

declare dso_local i32 @SeekBuf(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32* @LoadLangList(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @AppendBufStr(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_10__* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @UniFormat(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @AppendBufUtf8(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @FreeLangList(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @DumpBufWIfNecessary(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
