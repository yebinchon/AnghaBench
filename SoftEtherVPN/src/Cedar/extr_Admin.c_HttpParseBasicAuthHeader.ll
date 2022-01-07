; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_HttpParseBasicAuthHeader.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_HttpParseBasicAuthHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [14 x i8] c"Authorization\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"X-VPNADMIN-HUBNAME\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"X-VPNADMIN-PASSWORD\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Basic\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HttpParseBasicAuthHeader(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca [32 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %5
  %24 = load i8*, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %10, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %5
  store i32 0, i32* %6, align 4
  br label %130

30:                                               ; preds = %26
  %31 = load i32*, i32** %7, align 8
  %32 = call %struct.TYPE_3__* @GetHttpValue(i32* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %13, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call %struct.TYPE_3__* @GetHttpValue(i32* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %14, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call %struct.TYPE_3__* @GetHttpValue(i32* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %15, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %60

39:                                               ; preds = %30
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %41 = icmp eq %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @StrCpy(i8* %43, i32 %44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %53

46:                                               ; preds = %39
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @StrCpy(i8* %47, i32 %48, i8* %51)
  br label %53

53:                                               ; preds = %46, %42
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @StrCpy(i8* %54, i32 %55, i8* %58)
  store i32 1, i32* %12, align 4
  br label %60

60:                                               ; preds = %53, %30
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %128

63:                                               ; preds = %60
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %65 = icmp ne %struct.TYPE_3__* %64, null
  br i1 %65, label %66, label %128

66:                                               ; preds = %63
  %67 = load i32, i32* @MAX_SIZE, align 4
  %68 = zext i32 %67 to i64
  %69 = call i8* @llvm.stacksave()
  store i8* %69, i8** %17, align 8
  %70 = alloca i8, i64 %68, align 16
  store i64 %68, i64* %18, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %75 = trunc i64 %68 to i32
  %76 = call i64 @GetKeyAndValue(i8* %73, i8* %74, i32 32, i8* %70, i32 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %126

78:                                               ; preds = %66
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %80 = call i64 @StrCmpi(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %125

82:                                               ; preds = %78
  %83 = call i32 @IsEmptyStr(i8* %70)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %125

85:                                               ; preds = %82
  %86 = call i32 @StrSize(i8* %70)
  %87 = mul nsw i32 %86, 2
  %88 = add nsw i32 %87, 256
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %19, align 4
  %90 = call i8* @ZeroMalloc(i32 %89)
  store i8* %90, i8** %20, align 8
  %91 = load i8*, i8** %20, align 8
  %92 = call i32 @Decode64(i8* %91, i8* %70)
  %93 = load i8*, i8** %20, align 8
  %94 = call i32 @IsEmptyStr(i8* %93)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %122

96:                                               ; preds = %85
  %97 = load i8*, i8** %20, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 58
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @StrCpy(i8* %103, i32 %104, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i8*, i8** %10, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i8*, i8** %20, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = call i32 @StrCpy(i8* %106, i32 %107, i8* %109)
  store i32 1, i32* %12, align 4
  br label %121

111:                                              ; preds = %96
  %112 = load i8*, i8** %20, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i8*, i8** %10, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i64 @GetKeyAndValue(i8* %112, i8* %113, i32 %114, i8* %115, i32 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  store i32 1, i32* %12, align 4
  br label %120

120:                                              ; preds = %119, %111
  br label %121

121:                                              ; preds = %120, %102
  br label %122

122:                                              ; preds = %121, %85
  %123 = load i8*, i8** %20, align 8
  %124 = call i32 @Free(i8* %123)
  br label %125

125:                                              ; preds = %122, %82, %78
  br label %126

126:                                              ; preds = %125, %66
  %127 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %127)
  br label %128

128:                                              ; preds = %126, %63, %60
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %128, %29
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.TYPE_3__* @GetHttpValue(i32*, i8*) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @GetKeyAndValue(i8*, i8*, i32, i8*, i32, i8*) #1

declare dso_local i64 @StrCmpi(i8*, i8*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @StrSize(i8*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @Decode64(i8*, i8*) #1

declare dso_local i32 @Free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
