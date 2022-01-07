; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpJson.c_httpJsonItemToken.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpJson.c_httpJsonItemToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@JsonArrStt = common dso_local global i8 0, align 1
@JsonObjStt = common dso_local global i8 0, align 1
@JsonPairTkn = common dso_local global i8 0, align 1
@JsonItmTkn = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpJsonItemToken(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 -1
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %3, align 1
  %9 = load i8, i8* %3, align 1
  %10 = sext i8 %9 to i32
  %11 = load i8, i8* @JsonArrStt, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %32, label %14

14:                                               ; preds = %1
  %15 = load i8, i8* %3, align 1
  %16 = sext i8 %15 to i32
  %17 = load i8, i8* @JsonObjStt, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = load i8, i8* %3, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @JsonPairTkn, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i8, i8* %3, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* @JsonItmTkn, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %20, %14, %1
  br label %45

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ugt i8* %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = load i8, i8* @JsonItmTkn, align 1
  %44 = call i32 @httpJsonToken(%struct.TYPE_4__* %42, i8 signext %43)
  br label %45

45:                                               ; preds = %32, %41, %33
  ret void
}

declare dso_local i32 @httpJsonToken(%struct.TYPE_4__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
