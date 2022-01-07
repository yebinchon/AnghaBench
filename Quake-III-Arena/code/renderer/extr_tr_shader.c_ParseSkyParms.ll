; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_ParseSkyParms.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_ParseSkyParms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i8**, i8** }
%struct.TYPE_6__ = type { i8* }

@ParseSkyParms.suf = internal global [6 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"bk\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"lf\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ft\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"dn\00", align 1
@MAX_QPATH = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"WARNING: 'skyParms' missing parameter in shader '%s'\0A\00", align 1
@shader = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%s_%s.tga\00", align 1
@qtrue = common dso_local global i32 0, align 4
@GL_CLAMP = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GL_REPEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @ParseSkyParms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParseSkyParms(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %8 = load i32, i32* @MAX_QPATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i8**, i8*** %2, align 8
  %13 = load i32, i32* @qfalse, align 4
  %14 = call i8* @COM_ParseExt(i8** %12, i32 %13)
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %22 = load i32, i32* @PRINT_WARNING, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 2), align 8
  %24 = call i32 %21(i32 %22, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %23)
  store i32 1, i32* %7, align 4
  br label %145

25:                                               ; preds = %1
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %62, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 6
  br i1 %32, label %33, label %65

33:                                               ; preds = %30
  %34 = trunc i64 %9 to i32
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [6 x i8*], [6 x i8*]* @ParseSkyParms.suf, i64 0, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @Com_sprintf(i8* %11, i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %35, i8* %39)
  %41 = load i32, i32* @qtrue, align 4
  %42 = load i32, i32* @qtrue, align 4
  %43 = load i32, i32* @GL_CLAMP, align 4
  %44 = call i8* @R_FindImageFile(i8* %11, i32 %41, i32 %42, i32 %43)
  %45 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 2), align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  store i8* %44, i8** %48, align 8
  %49 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 2), align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %33
  %56 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 8
  %57 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 2), align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  store i8* %56, i8** %60, align 8
  br label %61

61:                                               ; preds = %55, %33
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %30

65:                                               ; preds = %30
  br label %66

66:                                               ; preds = %65, %25
  %67 = load i8**, i8*** %2, align 8
  %68 = load i32, i32* @qfalse, align 4
  %69 = call i8* @COM_ParseExt(i8** %67, i32 %68)
  store i8* %69, i8** %3, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %77 = load i32, i32* @PRINT_WARNING, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 2), align 8
  %79 = call i32 %76(i32 %77, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  store i32 1, i32* %7, align 4
  br label %145

80:                                               ; preds = %66
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @atof(i8* %81)
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 0), align 8
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 0), align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  store i32 512, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 0), align 8
  br label %86

86:                                               ; preds = %85, %80
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 0), align 8
  %88 = call i32 @R_InitSkyTexCoords(i32 %87)
  %89 = load i8**, i8*** %2, align 8
  %90 = load i32, i32* @qfalse, align 4
  %91 = call i8* @COM_ParseExt(i8** %89, i32 %90)
  store i8* %91, i8** %3, align 8
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %86
  %98 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %99 = load i32, i32* @PRINT_WARNING, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 2), align 8
  %101 = call i32 %98(i32 %99, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  store i32 1, i32* %7, align 4
  br label %145

102:                                              ; preds = %86
  %103 = load i8*, i8** %3, align 8
  %104 = call i64 @strcmp(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %143

106:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %139, %106
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 6
  br i1 %109, label %110, label %142

110:                                              ; preds = %107
  %111 = trunc i64 %9 to i32
  %112 = load i8*, i8** %3, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [6 x i8*], [6 x i8*]* @ParseSkyParms.suf, i64 0, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @Com_sprintf(i8* %11, i32 %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %112, i8* %116)
  %118 = load i32, i32* @qtrue, align 4
  %119 = load i32, i32* @qtrue, align 4
  %120 = load i32, i32* @GL_REPEAT, align 4
  %121 = call i8* @R_FindImageFile(i8* %11, i32 %118, i32 %119, i32 %120)
  %122 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 1), align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  store i8* %121, i8** %125, align 8
  %126 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 1), align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %110
  %133 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 8
  %134 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 1, i32 1), align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  store i8* %133, i8** %137, align 8
  br label %138

138:                                              ; preds = %132, %110
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %107

142:                                              ; preds = %107
  br label %143

143:                                              ; preds = %142, %102
  %144 = load i32, i32* @qtrue, align 4
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shader, i32 0, i32 0), align 8
  store i32 0, i32* %7, align 4
  br label %145

145:                                              ; preds = %143, %97, %75, %20
  %146 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %7, align 4
  switch i32 %147, label %149 [
    i32 0, label %148
    i32 1, label %148
  ]

148:                                              ; preds = %145, %145
  ret void

149:                                              ; preds = %145
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @COM_ParseExt(i8**, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @R_FindImageFile(i8*, i32, i32, i32) #2

declare dso_local i32 @atof(i8*) #2

declare dso_local i32 @R_InitSkyTexCoords(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
