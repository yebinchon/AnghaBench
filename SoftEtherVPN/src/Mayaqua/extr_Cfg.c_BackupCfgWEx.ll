; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_BackupCfgWEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_BackupCfgWEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i32] [i32 64, i32 98, i32 97, i32 99, i32 107, i32 117, i32 112, i32 46, i32 37, i32 115, i32 0], align 4
@.str.1 = private unnamed_addr constant [20 x i32] [i32 37, i32 48, i32 52, i32 117, i32 37, i32 48, i32 50, i32 117, i32 37, i32 48, i32 50, i32 117, i32 37, i32 48, i32 50, i32 117, i32 95, i32 37, i32 115, i32 0], align 4
@INFINITE = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [8 x i32] [i32 37, i32 48, i32 56, i32 117, i32 95, i32 37, i32 115, i32 0], align 4
@.str.3 = private unnamed_addr constant [6 x i32] [i32 37, i32 115, i32 47, i32 37, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BackupCfgWEx(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_5__, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = icmp eq %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %4
  store i32 1, i32* %15, align 4
  br label %120

35:                                               ; preds = %31
  %36 = mul nuw i64 4, %17
  %37 = trunc i64 %36 to i32
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 64
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  br label %47

45:                                               ; preds = %35
  %46 = load i32*, i32** %7, align 8
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi i32* [ %44, %42 ], [ %46, %45 ]
  %49 = call i32 (i32*, i32, i8*, i32*, ...) @UniFormat(i32* %19, i32 %37, i8* bitcast ([11 x i32]* @.str to i8*), i32* %48)
  %50 = call i32 @LocalTime(%struct.TYPE_5__* %14)
  %51 = mul nuw i64 4, %27
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 64
  br i1 %66, label %67, label %70

67:                                               ; preds = %47
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  br label %72

70:                                               ; preds = %47
  %71 = load i32*, i32** %7, align 8
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi i32* [ %69, %67 ], [ %71, %70 ]
  %74 = call i32 (i32*, i32, i8*, i32*, ...) @UniFormat(i32* %28, i32 %52, i8* bitcast ([20 x i32]* @.str.1 to i8*), i32* %56, i32 %58, i32 %60, i32 %62, i32* %73)
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** @INFINITE, align 8
  %77 = icmp eq i32* %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = mul nuw i64 4, %21
  %80 = trunc i64 %79 to i32
  %81 = call i32 @UniStrCpy(i32* %22, i32 %80, i32* %28)
  br label %98

82:                                               ; preds = %72
  %83 = mul nuw i64 4, %21
  %84 = trunc i64 %83 to i32
  %85 = load i32*, i32** %8, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 64
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  br label %95

93:                                               ; preds = %82
  %94 = load i32*, i32** %7, align 8
  br label %95

95:                                               ; preds = %93, %90
  %96 = phi i32* [ %92, %90 ], [ %94, %93 ]
  %97 = call i32 (i32*, i32, i8*, i32*, ...) @UniFormat(i32* %22, i32 %84, i8* bitcast ([8 x i32]* @.str.2 to i8*), i32* %85, i32* %96)
  br label %98

98:                                               ; preds = %95, %78
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i64 @UniStrCmpi(i32* %28, i32* %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 1, i32* %15, align 4
  br label %120

105:                                              ; preds = %98
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @UniStrCpy(i32* %108, i32 8, i32* %28)
  %110 = call i64 @IsFileExistsW(i32* %22)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  store i32 1, i32* %15, align 4
  br label %120

113:                                              ; preds = %105
  %114 = call i32 @MakeDirW(i32* %19)
  %115 = mul nuw i64 4, %24
  %116 = trunc i64 %115 to i32
  %117 = call i32 (i32*, i32, i8*, i32*, ...) @UniFormat(i32* %25, i32 %116, i8* bitcast ([6 x i32]* @.str.3 to i8*), i32* %19, i32* %22)
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @CfgSaveW(i32* %118, i32* %25)
  store i32 0, i32* %15, align 4
  br label %120

120:                                              ; preds = %113, %112, %104, %34
  %121 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %15, align 4
  switch i32 %122, label %124 [
    i32 0, label %123
    i32 1, label %123
  ]

123:                                              ; preds = %120, %120
  ret void

124:                                              ; preds = %120
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UniFormat(i32*, i32, i8*, i32*, ...) #2

declare dso_local i32 @LocalTime(%struct.TYPE_5__*) #2

declare dso_local i32 @UniStrCpy(i32*, i32, i32*) #2

declare dso_local i64 @UniStrCmpi(i32*, i32*) #2

declare dso_local i64 @IsFileExistsW(i32*) #2

declare dso_local i32 @MakeDirW(i32*) #2

declare dso_local i32 @CfgSaveW(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
