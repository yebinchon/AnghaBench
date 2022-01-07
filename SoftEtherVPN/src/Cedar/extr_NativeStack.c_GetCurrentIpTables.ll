; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_GetCurrentIpTables.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_GetCurrentIpTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i8** }
%struct.TYPE_11__ = type { i8*, i8*, i64 }

@.str = private unnamed_addr constant [12 x i8] c"Chain INPUT\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Chain FORWARD\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Chain OUTPUT\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Chain\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"num\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @GetCurrentIpTables() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %1, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %168

14:                                               ; preds = %0
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %15

15:                                               ; preds = %43, %14
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %15
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i8**, i8*** %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @StartWith(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %21
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @StartWith(i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @StartWith(i8* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %31, %21
  %40 = load i64, i64* %4, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %3, align 8
  br label %15

46:                                               ; preds = %15
  %47 = load i64, i64* %4, align 8
  %48 = icmp uge i64 %47, 3
  br i1 %48, label %49, label %165

49:                                               ; preds = %46
  store i64 0, i64* %7, align 8
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %51 = call i32 @Zero(i8* %50, i32 64)
  store i64 0, i64* %3, align 8
  br label %52

52:                                               ; preds = %161, %49
  %53 = load i64, i64* %3, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %164

58:                                               ; preds = %52
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i8**, i8*** %60, align 8
  %62 = load i64, i64* %3, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i64 @StartWith(i8* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %58
  %69 = load i8*, i8** %8, align 8
  %70 = call %struct.TYPE_9__* @ParseToken(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %9, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = icmp ne %struct.TYPE_9__* %71, null
  br i1 %72, label %73, label %98

73:                                               ; preds = %68
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp uge i64 %76, 4
  br i1 %77, label %78, label %95

78:                                               ; preds = %73
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @StrCpy(i8* %79, i32 64, i8* %84)
  store i64 1, i64* %7, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %87 = icmp eq %struct.TYPE_10__* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %78
  %89 = call i8* @ZeroMalloc(i32 4)
  %90 = bitcast i8* %89 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %1, align 8
  %91 = call i32 @NewListFast(i32* null)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %88, %78
  br label %95

95:                                               ; preds = %94, %73
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %97 = call i32 @FreeToken(%struct.TYPE_9__* %96)
  br label %98

98:                                               ; preds = %95, %68
  br label %99

99:                                               ; preds = %98, %58
  %100 = load i64, i64* %7, align 8
  %101 = icmp eq i64 %100, 1
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i8*, i8** %8, align 8
  %104 = call i64 @StartWith(i8* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i64 2, i64* %7, align 8
  br label %107

107:                                              ; preds = %106, %102
  br label %160

108:                                              ; preds = %99
  %109 = load i64, i64* %7, align 8
  %110 = icmp eq i64 %109, 2
  br i1 %110, label %111, label %159

111:                                              ; preds = %108
  %112 = load i8*, i8** %8, align 8
  %113 = call %struct.TYPE_9__* @ParseToken(i8* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_9__* %113, %struct.TYPE_9__** %10, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %115 = icmp ne %struct.TYPE_9__* %114, null
  br i1 %115, label %116, label %158

116:                                              ; preds = %111
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp uge i64 %119, 6
  br i1 %120, label %121, label %155

121:                                              ; preds = %116
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @ToInt(i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %155

129:                                              ; preds = %121
  %130 = call i8* @ZeroMalloc(i32 24)
  %131 = bitcast i8* %130 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %131, %struct.TYPE_11__** %11, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %136 = call i32 @StrCpy(i8* %134, i32 8, i8* %135)
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load i8**, i8*** %138, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @ToInt(i8* %141)
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = call i32 @StrCpy(i8* %147, i32 8, i8* %148)
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %154 = call i32 @Add(i32 %152, %struct.TYPE_11__* %153)
  br label %155

155:                                              ; preds = %129, %121, %116
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %157 = call i32 @FreeToken(%struct.TYPE_9__* %156)
  br label %158

158:                                              ; preds = %155, %111
  br label %159

159:                                              ; preds = %158, %108
  br label %160

160:                                              ; preds = %159, %107
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %3, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %3, align 8
  br label %52

164:                                              ; preds = %52
  br label %165

165:                                              ; preds = %164, %46
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %167 = call i32 @FreeToken(%struct.TYPE_9__* %166)
  br label %168

168:                                              ; preds = %165, %0
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  ret %struct.TYPE_10__* %169
}

declare dso_local i64 @StartWith(i8*, i8*) #1

declare dso_local i32 @Zero(i8*, i32) #1

declare dso_local %struct.TYPE_9__* @ParseToken(i8*, i8*) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @NewListFast(i32*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_9__*) #1

declare dso_local i64 @ToInt(i8*) #1

declare dso_local i32 @Add(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
