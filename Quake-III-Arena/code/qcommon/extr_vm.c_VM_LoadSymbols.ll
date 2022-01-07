; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm.c_VM_LoadSymbols.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm.c_VM_LoadSymbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32*, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_7__* }

@MAX_QPATH = common dso_local global i32 0, align 4
@com_developer = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"vm/%s.map\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Couldn't load symbol file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"WARNING: incomplete line at end of file\0A\00", align 1
@h_high = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"%i symbols parsed from %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VM_LoadSymbols(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__**, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %18 = load i32, i32* @MAX_QPATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load i32, i32* @MAX_QPATH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @com_developer, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  store i32 1, i32* %17, align 4
  br label %134

30:                                               ; preds = %1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @COM_StripExtension(i32 %33, i8* %21)
  %35 = trunc i64 %23 to i32
  %36 = call i32 @Com_sprintf(i8* %24, i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %21)
  %37 = call i32 @FS_ReadFile(i8* %24, i8** %4)
  store i32 %37, i32* %3, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %30
  %41 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i32 1, i32* %17, align 4
  br label %134

42:                                               ; preds = %30
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = ashr i32 %45, 2
  store i32 %46, i32* %16, align 4
  %47 = load i8*, i8** %4, align 8
  store i8* %47, i8** %5, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  store %struct.TYPE_7__** %49, %struct.TYPE_7__*** %10, align 8
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %113, %63, %42
  br label %51

51:                                               ; preds = %50
  %52 = call i8* @COM_Parse(i8** %5)
  store i8* %52, i8** %6, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %126

58:                                               ; preds = %51
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @ParseHex(i8* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = call i8* @COM_Parse(i8** %5)
  %65 = call i8* @COM_Parse(i8** %5)
  br label %50

66:                                               ; preds = %58
  %67 = call i8* @COM_Parse(i8** %5)
  store i8* %67, i8** %6, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %126

74:                                               ; preds = %66
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @ParseHex(i8* %75)
  store i32 %76, i32* %13, align 4
  %77 = call i8* @COM_Parse(i8** %5)
  store i8* %77, i8** %6, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %74
  %83 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %126

84:                                               ; preds = %74
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @strlen(i8* %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 16, %88
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @h_high, align 4
  %92 = call %struct.TYPE_7__* @Hunk_Alloc(i32 %90, i32 %91)
  store %struct.TYPE_7__* %92, %struct.TYPE_7__** %11, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %94 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %94, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  store %struct.TYPE_7__** %96, %struct.TYPE_7__*** %10, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %98, align 8
  %99 = load i32, i32* %13, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %84
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %13, align 4
  br label %113

113:                                              ; preds = %105, %101, %84
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %6, align 8
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  %123 = call i32 @Q_strncpyz(i32 %119, i8* %120, i32 %122)
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %50

126:                                              ; preds = %82, %72, %57
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %130, i8* %24)
  %132 = load i8*, i8** %4, align 8
  %133 = call i32 @FS_FreeFile(i8* %132)
  store i32 0, i32* %17, align 4
  br label %134

134:                                              ; preds = %126, %40, %29
  %135 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %17, align 4
  switch i32 %136, label %138 [
    i32 0, label %137
    i32 1, label %137
  ]

137:                                              ; preds = %134, %134
  ret void

138:                                              ; preds = %134
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @COM_StripExtension(i32, i8*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @FS_ReadFile(i8*, i8**) #2

declare dso_local i32 @Com_Printf(i8*, ...) #2

declare dso_local i8* @COM_Parse(i8**) #2

declare dso_local i32 @ParseHex(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local %struct.TYPE_7__* @Hunk_Alloc(i32, i32) #2

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #2

declare dso_local i32 @FS_FreeFile(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
