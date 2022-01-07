; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_fetchPayload.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_fetchPayload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64*, %struct.TYPE_9__, %struct.TYPE_7__** }
%struct.TYPE_9__ = type { i64, i8*, i32, i64, i32 }
%struct.TYPE_7__ = type { i64, i64 }

@CURSOR_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, i32*, i32)* @fetchPayload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fetchPayload(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %21, i64 %24
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br label %28

28:                                               ; preds = %18, %13, %3
  %29 = phi i1 [ false, %13 ], [ false, %3 ], [ %27, %18 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CURSOR_VALID, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = call i32 @cursorHoldsMutex(%struct.TYPE_8__* %39)
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %44, i64 %47
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %8, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i64 @NEVER(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %28
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %74, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %75, i64 %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  %91 = call i32 @btreeParseCell(%struct.TYPE_7__* %80, i64 %88, %struct.TYPE_9__* %90)
  br label %92

92:                                               ; preds = %72, %28
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %7, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %7, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %92
  store i32 0, i32* %9, align 4
  br label %115

109:                                              ; preds = %92
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %109, %108
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load i32, i32* %9, align 4
  %120 = load i8*, i8** %7, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %7, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sub nsw i32 %126, %127
  store i32 %128, i32* %10, align 4
  br label %139

129:                                              ; preds = %115
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp sle i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  br label %139

139:                                              ; preds = %129, %118
  %140 = load i32, i32* %10, align 4
  %141 = load i32*, i32** %5, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i8*, i8** %7, align 8
  ret i8* %142
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cursorHoldsMutex(%struct.TYPE_8__*) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @btreeParseCell(%struct.TYPE_7__*, i64, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
