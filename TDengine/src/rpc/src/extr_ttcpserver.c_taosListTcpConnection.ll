; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_ttcpserver.c_taosListTcpConnection.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_ttcpserver.c_taosListTcpConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_6__*, i32 }

@.str = private unnamed_addr constant [43 x i8] c"TCP:%s Thread:%d number of connections:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"   ip:%s port:%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"TCP:%s thread:%d BIG error, numOfFds:%d actual numOfFds:%d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"TCP:%s total connections:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taosListTcpConnection(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %15, align 1
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %11, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %6, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %92, %2
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %95

26:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %33, i32 %36)
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8* %42, i8** %11, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %7, align 8
  br label %46

46:                                               ; preds = %49, %26
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %52, i8* %57)
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8* %63, i8** %11, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %7, align 8
  br label %46

71:                                               ; preds = %46
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @tError(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* %80, i32 %83, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %77, %71
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 1
  store %struct.TYPE_4__* %91, %struct.TYPE_4__** %6, align 8
  br label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %20

95:                                               ; preds = %20
  %96 = load i8*, i8** %11, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %99, i32 %100)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tError(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
