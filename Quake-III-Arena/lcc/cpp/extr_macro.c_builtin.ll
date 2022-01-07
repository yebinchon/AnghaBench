; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_macro.c_builtin.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_macro.c_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32, i32* }

@cursource = common dso_local global %struct.TYPE_8__* null, align 8
@STRING = common dso_local global i64 0, align 8
@outp = common dso_local global i8* null, align 8
@NUMBER = common dso_local global i64 0, align 8
@curtime = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cpp botch: unknown internal macro\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @builtin(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 1
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %13, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cursource, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %7, align 8
  br label %17

17:                                               ; preds = %27, %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, -1
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i1 [ false, %17 ], [ %24, %20 ]
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %7, align 8
  br label %17

31:                                               ; preds = %25
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = icmp eq %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cursource, align 8
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %7, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i64, i64* @STRING, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i8*, i8** @outp, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** @outp, align 8
  store i8 32, i8* %45, align 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %44, %36
  %50 = load i8*, i8** @outp, align 8
  store i8* %50, i8** %5, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  store i8 34, i8* %51, align 1
  %53 = load i32, i32* %4, align 4
  switch i32 %53, label %108 [
    i32 129, label %54
    i32 130, label %64
    i32 131, label %89
    i32 128, label %101
  ]

54:                                               ; preds = %49
  %55 = load i64, i64* @NUMBER, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 -1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @outnum(i8* %59, i32 %62)
  store i8* %63, i8** %5, align 8
  br label %111

64:                                               ; preds = %49
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %8, align 8
  br label %68

68:                                               ; preds = %85, %64
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %8, align 8
  %71 = load i8, i8* %69, align 1
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  store i8 %71, i8* %72, align 1
  %74 = sext i8 %71 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %68
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 -1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 92
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %5, align 8
  store i8 92, i8* %83, align 1
  br label %85

85:                                               ; preds = %82, %76
  br label %68

86:                                               ; preds = %68
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 -1
  store i8* %88, i8** %5, align 8
  br label %111

89:                                               ; preds = %49
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* @curtime, align 4
  %92 = add nsw i32 %91, 4
  %93 = call i32 @strncpy(i8* %90, i32 %92, i32 7)
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 7
  %96 = load i32, i32* @curtime, align 4
  %97 = add nsw i32 %96, 20
  %98 = call i32 @strncpy(i8* %95, i32 %97, i32 4)
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 11
  store i8* %100, i8** %5, align 8
  br label %111

101:                                              ; preds = %49
  %102 = load i8*, i8** %5, align 8
  %103 = load i32, i32* @curtime, align 4
  %104 = add nsw i32 %103, 11
  %105 = call i32 @strncpy(i8* %102, i32 %104, i32 8)
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 8
  store i8* %107, i8** %5, align 8
  br label %111

108:                                              ; preds = %49
  %109 = load i32, i32* @ERROR, align 4
  %110 = call i32 @error(i32 %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %134

111:                                              ; preds = %101, %89, %86, %54
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @STRING, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %5, align 8
  store i8 34, i8* %118, align 1
  br label %120

120:                                              ; preds = %117, %111
  %121 = load i8*, i8** @outp, align 8
  %122 = bitcast i8* %121 to i32*
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  store i32* %122, i32** %124, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = load i8*, i8** @outp, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = trunc i64 %129 to i32
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load i8*, i8** %5, align 8
  store i8* %133, i8** @outp, align 8
  br label %134

134:                                              ; preds = %120, %108
  ret void
}

declare dso_local i8* @outnum(i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
