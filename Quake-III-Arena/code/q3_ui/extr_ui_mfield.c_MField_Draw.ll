; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_mfield.c_MField_Draw.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_mfield.c_MField_Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32 }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"drawLen >= MAX_STRING_CHARS\00", align 1
@UI_PULSE = common dso_local global i32 0, align 4
@UI_BLINK = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@UI_GIANTFONT = common dso_local global i32 0, align 4
@GIANTCHAR_WIDTH = common dso_local global i32 0, align 4
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@UI_CENTER = common dso_local global i32 0, align 4
@UI_RIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MField_Draw(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* @MAX_STRING_CHARS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %13, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %61

35:                                               ; preds = %5
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %11, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %35
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %13, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %43
  br label %57

57:                                               ; preds = %56, %35
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %57, %34
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %11, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %14, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %67, %61
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @MAX_STRING_CHARS, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @trap_Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @memcpy(i8* %22, i8* %83, i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %22, i64 %87
  store i8 0, i8* %88, align 1
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @UI_DrawString(i32 %89, i32 %90, i8* %22, i32 %91, i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @UI_PULSE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %77
  store i32 1, i32* %18, align 4
  br label %174

99:                                               ; preds = %77
  %100 = call i64 (...) @trap_Key_GetOverstrikeMode()
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 11, i32* %15, align 4
  br label %104

103:                                              ; preds = %99
  store i32 10, i32* %15, align 4
  br label %104

104:                                              ; preds = %103, %102
  %105 = load i32, i32* @UI_PULSE, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %9, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* @UI_BLINK, align 4
  %110 = load i32, i32* %9, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @UI_SMALLFONT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %104
  %117 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  store i32 %117, i32* %12, align 4
  br label %128

118:                                              ; preds = %104
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @UI_GIANTFONT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* @GIANTCHAR_WIDTH, align 4
  store i32 %124, i32* %12, align 4
  br label %127

125:                                              ; preds = %118
  %126 = load i32, i32* @BIGCHAR_WIDTH, align 4
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %125, %123
  br label %128

128:                                              ; preds = %127, %116
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @UI_CENTER, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = call i32 @strlen(i8* %22)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %12, align 4
  %138 = mul nsw i32 %136, %137
  %139 = sdiv i32 %138, 2
  %140 = sub nsw i32 %135, %139
  store i32 %140, i32* %7, align 4
  br label %154

141:                                              ; preds = %128
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @UI_RIGHT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = call i32 @strlen(i8* %22)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %12, align 4
  %151 = mul nsw i32 %149, %150
  %152 = sub nsw i32 %148, %151
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %146, %141
  br label %154

154:                                              ; preds = %153, %133
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %14, align 4
  %160 = sub nsw i32 %158, %159
  %161 = load i32, i32* %12, align 4
  %162 = mul nsw i32 %160, %161
  %163 = add nsw i32 %155, %162
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @UI_CENTER, align 4
  %168 = load i32, i32* @UI_RIGHT, align 4
  %169 = or i32 %167, %168
  %170 = xor i32 %169, -1
  %171 = and i32 %166, %170
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @UI_DrawChar(i32 %163, i32 %164, i32 %165, i32 %171, i32 %172)
  store i32 0, i32* %18, align 4
  br label %174

174:                                              ; preds = %154, %98
  %175 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %175)
  %176 = load i32, i32* %18, align 4
  switch i32 %176, label %178 [
    i32 0, label %177
    i32 1, label %177
  ]

177:                                              ; preds = %174, %174
  ret void

178:                                              ; preds = %174
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @trap_Error(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @UI_DrawString(i32, i32, i8*, i32, i32) #2

declare dso_local i64 @trap_Key_GetOverstrikeMode(...) #2

declare dso_local i32 @UI_DrawChar(i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
