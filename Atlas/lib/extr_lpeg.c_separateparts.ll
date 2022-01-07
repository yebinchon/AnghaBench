; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_separateparts.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_separateparts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }

@ICommit = common dso_local global i64 0, align 8
@IChoice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (i32*, %struct.TYPE_15__*, i32, i32, i32*, i32*)* @separateparts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @separateparts(i32* %0, %struct.TYPE_15__* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @firstpart(%struct.TYPE_15__* %22, i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %6
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = call %struct.TYPE_15__* @basicUnion(i32* %28, %struct.TYPE_15__* %29, i32 %30, i32 %31, i32* %32, i32* %33)
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %7, align 8
  br label %176

35:                                               ; preds = %6
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i64 -1
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ICommit, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %35
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @interfere(%struct.TYPE_15__* %47, i32 %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %92, label %52

52:                                               ; preds = %46, %35
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load i32*, i32** %12, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i64 %63
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %14, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* %11, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = call %struct.TYPE_15__* @separateparts(i32* %60, %struct.TYPE_15__* %64, i32 %67, i32 %68, i32* %69, i32* %70)
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %15, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i64 %74
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @copypatt(%struct.TYPE_15__* %75, %struct.TYPE_15__* %76, i32 %77)
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %17, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sub nsw i32 %80, %82
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i64 -1
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  store i32 %83, i32* %90, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %91, %struct.TYPE_15__** %7, align 8
  br label %176

92:                                               ; preds = %46
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %95, %96
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %20, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %100 = call i32 @sizei(%struct.TYPE_15__* %99)
  store i32 %100, i32* %21, align 4
  %101 = load i32, i32* %20, align 4
  %102 = load i32*, i32** %12, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i64 %106
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %14, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load i32, i32* %11, align 4
  %112 = load i32*, i32** %12, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = call %struct.TYPE_15__* @separateparts(i32* %103, %struct.TYPE_15__* %107, i32 %110, i32 %111, i32* %112, i32* %113)
  store %struct.TYPE_15__* %114, %struct.TYPE_15__** %18, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %116 = load i32, i32* %19, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i64 %117
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %120 = load i32, i32* %21, align 4
  %121 = call i32 @copypatt(%struct.TYPE_15__* %118, %struct.TYPE_15__* %119, i32 %120)
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %123 = load i32, i32* %19, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  %130 = load i32, i32* %21, align 4
  %131 = load i32, i32* %19, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %19, align 4
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %134 = load i32, i32* %19, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i64 %135
  %137 = load i32, i32* @IChoice, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %21, align 4
  %140 = sub nsw i32 %138, %139
  %141 = add nsw i32 %140, 1
  %142 = call i32 @setinstaux(%struct.TYPE_15__* %136, i32 %137, i32 %141, i32 1)
  %143 = load i32, i32* %19, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %19, align 4
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %146 = load i32, i32* %19, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i64 %147
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %150 = load i32, i32* %21, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i64 %151
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %21, align 4
  %155 = sub nsw i32 %153, %154
  %156 = sub nsw i32 %155, 1
  %157 = call i32 @copypatt(%struct.TYPE_15__* %148, %struct.TYPE_15__* %152, i32 %156)
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %21, align 4
  %160 = sub nsw i32 %158, %159
  %161 = sub nsw i32 %160, 1
  %162 = load i32, i32* %19, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %19, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %165 = load i32, i32* %19, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i64 %166
  %168 = load i64, i64* @ICommit, align 8
  %169 = load i32*, i32** %12, align 8
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %20, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sub nsw i32 %170, %172
  %174 = call i32 @setinst(%struct.TYPE_15__* %167, i64 %168, i32 %173)
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %175, %struct.TYPE_15__** %7, align 8
  br label %176

176:                                              ; preds = %92, %52, %27
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  ret %struct.TYPE_15__* %177
}

declare dso_local i32 @firstpart(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_15__* @basicUnion(i32*, %struct.TYPE_15__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @interfere(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @copypatt(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @sizei(%struct.TYPE_15__*) #1

declare dso_local i32 @setinstaux(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @setinst(%struct.TYPE_15__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
