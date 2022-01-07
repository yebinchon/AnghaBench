; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_StrToIP6.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_StrToIP6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i8** }
%struct.TYPE_9__ = type { i32, i8** }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@INFINITE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StrToIP6(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca [2 x i8*], align 16
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  store i64 0, i64* %11, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = icmp eq %struct.TYPE_10__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %193

31:                                               ; preds = %27
  %32 = call i32 @ZeroIP6(%struct.TYPE_10__* %9)
  %33 = trunc i64 %22 to i32
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @StrCpy(i8* %24, i32 %33, i8* %34)
  %36 = call i32 @Trim(i8* %24)
  %37 = call i64 @StartWith(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %31
  %40 = call i64 @EndWith(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = trunc i64 %22 to i32
  %44 = getelementptr inbounds i8, i8* %24, i64 1
  %45 = call i32 @StrCpyAllowOverlap(i8* %24, i32 %43, i8* %44)
  %46 = call i64 @StrLen(i8* %24)
  %47 = icmp sge i64 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = call i64 @StrLen(i8* %24)
  %50 = sub nsw i64 %49, 1
  %51 = getelementptr inbounds i8, i8* %24, i64 %50
  store i8 0, i8* %51, align 1
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %52, %39, %31
  %54 = call i64 @SearchStrEx(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @INFINITE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load i32, i32* @MAX_PATH, align 4
  %60 = zext i32 %59 to i64
  %61 = call i8* @llvm.stacksave()
  store i8* %61, i8** %13, align 8
  %62 = alloca i8, i64 %60, align 16
  store i64 %60, i64* %14, align 8
  %63 = trunc i64 %60 to i32
  %64 = load i64, i64* %10, align 8
  %65 = add nsw i64 %64, 1
  %66 = getelementptr inbounds i8, i8* %24, i64 %65
  %67 = call i32 @StrCpy(i8* %62, i32 %63, i8* %66)
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds i8, i8* %24, i64 %68
  store i8 0, i8* %69, align 1
  %70 = call i32 @Trim(i8* %24)
  %71 = call i32 @Trim(i8* %62)
  %72 = call i64 @ToInt(i8* %62)
  store i64 %72, i64* %11, align 8
  %73 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %73)
  br label %74

74:                                               ; preds = %58, %53
  %75 = call %struct.TYPE_9__* @ParseTokenWithNullStr(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** %6, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %78, 3
  br i1 %79, label %80, label %182

80:                                               ; preds = %74
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sle i32 %83, 8
  br i1 %84, label %85, label %182

85:                                               ; preds = %80
  store i32 1, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %86

86:                                               ; preds = %155, %85
  %87 = load i64, i64* %15, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %87, %91
  br i1 %92, label %93, label %158

93:                                               ; preds = %86
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i8**, i8*** %95, align 8
  %97 = load i64, i64* %15, align 8
  %98 = getelementptr inbounds i8*, i8** %96, i64 %97
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %19, align 8
  %100 = load i64, i64* %15, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %93
  %103 = load i64, i64* %15, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = icmp ne i64 %103, %108
  br i1 %109, label %110, label %131

110:                                              ; preds = %102
  %111 = load i8*, i8** %19, align 8
  %112 = call i64 @StrLen(i8* %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %110
  %115 = load i64, i64* %16, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %16, align 8
  %117 = load i64, i64* %16, align 8
  %118 = icmp eq i64 %117, 1
  br i1 %118, label %119, label %129

119:                                              ; preds = %114
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 8, %122
  %124 = add nsw i32 %123, 1
  %125 = mul nsw i32 2, %124
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* %18, align 8
  %128 = add nsw i64 %127, %126
  store i64 %128, i64* %18, align 8
  br label %130

129:                                              ; preds = %114
  store i32 0, i32* %17, align 4
  br label %158

130:                                              ; preds = %119
  br label %154

131:                                              ; preds = %110, %102, %93
  %132 = load i8*, i8** %19, align 8
  %133 = call i32 @CheckIPItemStr6(i8* %132)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 0, i32* %17, align 4
  br label %158

136:                                              ; preds = %131
  %137 = getelementptr inbounds [2 x i8*], [2 x i8*]* %20, i64 0, i64 0
  %138 = load i8*, i8** %19, align 8
  %139 = call i32 @IPItemStrToChars6(i8** %137, i8* %138)
  %140 = getelementptr inbounds [2 x i8*], [2 x i8*]* %20, i64 0, i64 0
  %141 = load i8*, i8** %140, align 16
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %143 = load i8**, i8*** %142, align 8
  %144 = load i64, i64* %18, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %18, align 8
  %146 = getelementptr inbounds i8*, i8** %143, i64 %144
  store i8* %141, i8** %146, align 8
  %147 = getelementptr inbounds [2 x i8*], [2 x i8*]* %20, i64 0, i64 1
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %150 = load i8**, i8*** %149, align 8
  %151 = load i64, i64* %18, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %18, align 8
  %153 = getelementptr inbounds i8*, i8** %150, i64 %151
  store i8* %148, i8** %153, align 8
  br label %154

154:                                              ; preds = %136, %130
  br label %155

155:                                              ; preds = %154
  %156 = load i64, i64* %15, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %15, align 8
  br label %86

158:                                              ; preds = %135, %129, %86
  %159 = load i64, i64* %16, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i64, i64* %16, align 8
  %163 = icmp ne i64 %162, 1
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 0, i32* %17, align 4
  br label %175

165:                                              ; preds = %161, %158
  %166 = load i64, i64* %16, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 8
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  store i32 0, i32* %17, align 4
  br label %174

174:                                              ; preds = %173, %168, %165
  br label %175

175:                                              ; preds = %174, %164
  %176 = load i32, i32* %17, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %180 = call i32 @FreeToken(%struct.TYPE_9__* %179)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %193

181:                                              ; preds = %175
  br label %185

182:                                              ; preds = %80, %74
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %184 = call i32 @FreeToken(%struct.TYPE_9__* %183)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %193

185:                                              ; preds = %181
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %187 = call i32 @FreeToken(%struct.TYPE_9__* %186)
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %189 = call i32 @Copy(%struct.TYPE_10__* %188, %struct.TYPE_10__* %9, i32 16)
  %190 = load i64, i64* %11, align 8
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  store i64 %190, i64* %192, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %193

193:                                              ; preds = %185, %182, %178, %30
  %194 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %194)
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ZeroIP6(%struct.TYPE_10__*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @Trim(i8*) #2

declare dso_local i64 @StartWith(i8*, i8*) #2

declare dso_local i64 @EndWith(i8*, i8*) #2

declare dso_local i32 @StrCpyAllowOverlap(i8*, i32, i8*) #2

declare dso_local i64 @StrLen(i8*) #2

declare dso_local i64 @SearchStrEx(i8*, i8*, i32, i32) #2

declare dso_local i64 @ToInt(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local %struct.TYPE_9__* @ParseTokenWithNullStr(i8*, i8*) #2

declare dso_local i32 @CheckIPItemStr6(i8*) #2

declare dso_local i32 @IPItemStrToChars6(i8**, i8*) #2

declare dso_local i32 @FreeToken(%struct.TYPE_9__*) #2

declare dso_local i32 @Copy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
