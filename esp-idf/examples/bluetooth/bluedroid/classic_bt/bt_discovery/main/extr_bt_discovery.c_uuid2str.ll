; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_discovery/main/extr_bt_discovery.c_uuid2str.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_discovery/main/extr_bt_discovery.c_uuid2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i8*, i64)* @uuid2str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @uuid2str(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = icmp eq %struct.TYPE_5__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store i8* null, i8** %4, align 8
  br label %113

15:                                               ; preds = %11
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i64, i64* %7, align 8
  %22 = icmp uge i64 %21, 5
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %111

30:                                               ; preds = %20, %15
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 4
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i64, i64* %7, align 8
  %37 = icmp uge i64 %36, 9
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %110

45:                                               ; preds = %35, %30
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 16
  br i1 %49, label %50, label %108

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = icmp uge i64 %51, 37
  br i1 %52, label %53, label %108

53:                                               ; preds = %50
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %8, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 15
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 14
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 13
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 12
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 11
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 10
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 9
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 7
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 6
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 5
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %64, i32 %67, i32 %70, i32 %73, i32 %76, i32 %79, i32 %82, i32 %85, i32 %88, i32 %91, i32 %94, i32 %97, i32 %100, i32 %103, i32 %106)
  br label %109

108:                                              ; preds = %50, %45
  store i8* null, i8** %4, align 8
  br label %113

109:                                              ; preds = %53
  br label %110

110:                                              ; preds = %109, %38
  br label %111

111:                                              ; preds = %110, %23
  %112 = load i8*, i8** %6, align 8
  store i8* %112, i8** %4, align 8
  br label %113

113:                                              ; preds = %111, %108, %14
  %114 = load i8*, i8** %4, align 8
  ret i8* %114
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
