; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_qfiles.c_FindQuakeFilesWithPakFilter.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_qfiles.c_FindQuakeFilesWithPakFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i8*, i8*, %struct.TYPE_13__*, i32, i64, i64 }
%struct.TYPE_14__ = type { i32, i8** }
%struct.stat = type { i32 }

@_MAX_PATH = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".pk3\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @FindQuakeFilesWithPakFilter(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i32, i32* @_MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32, i32* @_MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %128

25:                                               ; preds = %2
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %128

29:                                               ; preds = %25
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @glob(i8* %30, i32 0, i32* null, %struct.TYPE_14__* %5)
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %123, %29
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %126

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcpy(i8* %19, i8* %43)
  %45 = call i32 @stat(i8* %19, %struct.stat* %6)
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @S_IFDIR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %37
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @strcpy(i8* %22, i8* %52)
  %54 = load i32, i32* @_MAX_PATH, align 4
  %55 = call i32 @AppendPathSeperator(i8* %22, i32 %54)
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strcat(i8* %22, i8* %56)
  %58 = call %struct.TYPE_13__* @FindQuakeFilesWithPakFilter(i8* null, i8* %22)
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %10, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %60 = icmp ne %struct.TYPE_13__* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %64, align 8
  br label %67

65:                                               ; preds = %51
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %8, align 8
  br label %67

67:                                               ; preds = %65, %61
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %9, align 8
  br label %69

69:                                               ; preds = %74, %67
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = icmp ne %struct.TYPE_13__* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %9, align 8
  br label %69

78:                                               ; preds = %69
  br label %122

79:                                               ; preds = %37
  %80 = call i8* @StringContains(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1)
  store i8* %80, i8** %14, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %79
  %84 = load i8*, i8** %14, align 8
  %85 = call i64 @strlen(i8* %19)
  %86 = getelementptr inbounds i8, i8* %19, i64 %85
  %87 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %88 = sub i64 0, %87
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = icmp eq i8* %84, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load i8*, i8** %4, align 8
  %93 = call %struct.TYPE_13__* @FindQuakeFilesInZip(i8* %19, i8* %92)
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %10, align 8
  br label %97

94:                                               ; preds = %83, %79
  %95 = load i8*, i8** %4, align 8
  %96 = call %struct.TYPE_13__* @FindQuakeFilesInPak(i8* %19, i8* %95)
  store %struct.TYPE_13__* %96, %struct.TYPE_13__** %10, align 8
  br label %97

97:                                               ; preds = %94, %91
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %99 = icmp ne %struct.TYPE_13__* %98, null
  br i1 %99, label %100, label %121

100:                                              ; preds = %97
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %102 = icmp ne %struct.TYPE_13__* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  store %struct.TYPE_13__* %104, %struct.TYPE_13__** %106, align 8
  br label %109

107:                                              ; preds = %100
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %108, %struct.TYPE_13__** %8, align 8
  br label %109

109:                                              ; preds = %107, %103
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %110, %struct.TYPE_13__** %9, align 8
  br label %111

111:                                              ; preds = %116, %109
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = icmp ne %struct.TYPE_13__* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  store %struct.TYPE_13__* %119, %struct.TYPE_13__** %9, align 8
  br label %111

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %97
  br label %122

122:                                              ; preds = %121, %78
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %32

126:                                              ; preds = %32
  %127 = call i32 @globfree(%struct.TYPE_14__* %5)
  br label %188

128:                                              ; preds = %25, %2
  %129 = load i8*, i8** %4, align 8
  %130 = call i32 @glob(i8* %129, i32 0, i32* null, %struct.TYPE_14__* %5)
  store i32 0, i32* %7, align 4
  br label %131

131:                                              ; preds = %183, %128
  %132 = load i32, i32* %7, align 4
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %132, %134
  br i1 %135, label %136, label %186

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %138 = load i8**, i8*** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @strcpy(i8* %22, i8* %142)
  %144 = call %struct.TYPE_13__* @malloc(i32 56)
  store %struct.TYPE_13__* %144, %struct.TYPE_13__** %10, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %146 = icmp ne %struct.TYPE_13__* %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %136
  %148 = call i32 @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %136
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %151 = call i32 @memset(%struct.TYPE_13__* %150, i32 0, i32 56)
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @strcpy(i8* %154, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @strcpy(i8* %158, i8* %22)
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 2
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @strcpy(i8* %162, i8* %22)
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 6
  store i64 0, i64* %165, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 5
  store i64 0, i64* %167, align 8
  %168 = call i32 @QuakeFileType(i8* %22)
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %172, align 8
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %174 = icmp ne %struct.TYPE_13__* %173, null
  br i1 %174, label %175, label %179

175:                                              ; preds = %149
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 3
  store %struct.TYPE_13__* %176, %struct.TYPE_13__** %178, align 8
  br label %181

179:                                              ; preds = %149
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %180, %struct.TYPE_13__** %8, align 8
  br label %181

181:                                              ; preds = %179, %175
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %182, %struct.TYPE_13__** %9, align 8
  br label %183

183:                                              ; preds = %181
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %7, align 4
  br label %131

186:                                              ; preds = %131
  %187 = call i32 @globfree(%struct.TYPE_14__* %5)
  br label %188

188:                                              ; preds = %186, %126
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %190 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %190)
  ret %struct.TYPE_13__* %189
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @glob(i8*, i32, i32*, %struct.TYPE_14__*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @AppendPathSeperator(i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i8* @StringContains(i8*, i8*, i32) #2

declare dso_local %struct.TYPE_13__* @FindQuakeFilesInZip(i8*, i8*) #2

declare dso_local %struct.TYPE_13__* @FindQuakeFilesInPak(i8*, i8*) #2

declare dso_local i32 @globfree(%struct.TYPE_14__*) #2

declare dso_local %struct.TYPE_13__* @malloc(i32) #2

declare dso_local i32 @Error(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @QuakeFileType(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
