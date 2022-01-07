; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_ParseUrl.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_ParseUrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32, i8*, i8*, i32, i8* }

@MAX_SIZE = common dso_local global i32 0, align 4
@MAX_HOST_NAME_LEN = common dso_local global i32 0, align 4
@WPC_HTTP_POST_NAME = common dso_local global i8* null, align 8
@WPC_HTTP_GET_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"://\00", align 1
@INFINITE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s:%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseUrl(%struct.TYPE_4__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %18 = load i32, i32* @MAX_SIZE, align 4
  %19 = mul nsw i32 %18, 3
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32, i32* @MAX_HOST_NAME_LEN, align 4
  %24 = add nsw i32 %23, 16
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  store i8* null, i8** %13, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = icmp eq %struct.TYPE_4__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %173

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = call i32 @Zero(%struct.TYPE_4__* %34, i32 56)
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** @WPC_HTTP_POST_NAME, align 8
  %43 = call i32 @StrCpy(i8* %41, i32 8, i8* %42)
  br label %50

44:                                               ; preds = %33
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** @WPC_HTTP_GET_NAME, align 8
  %49 = call i32 @StrCpy(i8* %47, i32 8, i8* %48)
  br label %50

50:                                               ; preds = %44, %38
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @StrCpy(i8* %56, i32 8, i8* %57)
  br label %59

59:                                               ; preds = %53, %50
  %60 = trunc i64 %20 to i32
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @StrCpy(i8* %22, i32 %60, i8* %61)
  %63 = call i32 @Trim(i8* %22)
  %64 = call i64 @StartWith(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 0, i32* %68, align 8
  %69 = getelementptr inbounds i8, i8* %22, i64 7
  store i8* %69, i8** %13, align 8
  br label %87

70:                                               ; preds = %59
  %71 = call i64 @StartWith(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i32 1, i32* %75, align 8
  %76 = getelementptr inbounds i8, i8* %22, i64 8
  store i8* %76, i8** %13, align 8
  br label %86

77:                                               ; preds = %70
  %78 = call i64 @SearchStrEx(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  %79 = load i64, i64* @INFINITE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %173

82:                                               ; preds = %77
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i32 0, i32* %84, align 8
  %85 = getelementptr inbounds i8, i8* %22, i64 0
  store i8* %85, i8** %13, align 8
  br label %86

86:                                               ; preds = %82, %73
  br label %87

87:                                               ; preds = %86, %66
  %88 = trunc i64 %25 to i32
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @StrCpy(i8* %26, i32 %88, i8* %89)
  %91 = call i64 @SearchStrEx(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0)
  store i64 %91, i64* %16, align 8
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* @INFINITE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %87
  %96 = load i64, i64* %16, align 8
  %97 = getelementptr inbounds i8, i8* %26, i64 %96
  store i8 0, i8* %97, align 1
  %98 = call i32 @StrLen(i8* %26)
  %99 = load i8*, i8** %13, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %13, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @StrCpy(i8* %104, i32 8, i8* %105)
  br label %112

107:                                              ; preds = %87
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @StrCpy(i8* %110, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %112

112:                                              ; preds = %107, %95
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 443, i32 80
  %119 = call i32 @ParseHostPort(i8* %26, i8** %14, i64* %15, i32 %118)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %173

122:                                              ; preds = %112
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 4
  %125 = load i8*, i8** %124, align 8
  %126 = load i8*, i8** %14, align 8
  %127 = call i32 @StrCpy(i8* %125, i32 8, i8* %126)
  %128 = load i64, i64* %15, align 8
  %129 = trunc i64 %128 to i32
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = call i32 @Free(i8* %132)
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %122
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 443
  br i1 %142, label %153, label %143

143:                                              ; preds = %138, %122
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %143
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 80
  br i1 %152, label %153, label %161

153:                                              ; preds = %148, %138
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 6
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @StrCpy(i8* %156, i32 8, i8* %159)
  br label %172

161:                                              ; preds = %148, %143
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 6
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 4
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @Format(i8* %164, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %167, i32 %170)
  br label %172

172:                                              ; preds = %161, %153
  store i32 1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %173

173:                                              ; preds = %172, %121, %81, %32
  %174 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @Trim(i8*) #2

declare dso_local i64 @StartWith(i8*, i8*) #2

declare dso_local i64 @SearchStrEx(i8*, i8*, i32, i32) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i32 @ParseHostPort(i8*, i8**, i64*, i32) #2

declare dso_local i32 @Free(i8*) #2

declare dso_local i32 @Format(i8*, i32, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
