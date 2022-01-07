; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2iasm.c_rebuild_args.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2iasm.c_rebuild_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }

@REG_M = common dso_local global i8* null, align 8
@REG_N = common dso_local global i8* null, align 8
@PCRELIMM = common dso_local global i8* null, align 8
@IMM = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rebuild_args(i8* %0, i8* %1, %struct.TYPE_5__* %2, %struct.TYPE_5__* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca [30 x i8], align 16
  %12 = alloca [30 x i8], align 16
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %10, align 8
  %14 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strcpy(i8* %14, i8* %15)
  %17 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strcpy(i8* %17, i8* %18)
  store i8* null, i8** %13, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %95 [
    i32 131, label %23
    i32 142, label %23
    i32 135, label %23
    i32 133, label %23
    i32 129, label %23
    i32 130, label %28
    i32 141, label %28
    i32 134, label %28
    i32 132, label %28
    i32 128, label %28
    i32 139, label %33
    i32 140, label %42
    i32 138, label %51
    i32 137, label %64
    i32 136, label %77
    i32 144, label %86
    i32 143, label %86
  ]

23:                                               ; preds = %5, %5, %5, %5, %5
  %24 = load i8*, i8** @REG_M, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %95

28:                                               ; preds = %5, %5, %5, %5, %5
  %29 = load i8*, i8** @REG_N, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %95

33:                                               ; preds = %5
  %34 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 2
  %35 = call i8* @strtol(i8* %34, i8** %13, i32 16)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @PCRELIMM, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %95

42:                                               ; preds = %5
  %43 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 2
  %44 = call i8* @strtol(i8* %43, i8** %13, i32 16)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @IMM, align 8
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %95

51:                                               ; preds = %5
  %52 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 2
  %53 = call i8* @strtol(i8* %52, i8** %13, i32 16)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @IMM, align 8
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** @REG_M, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %95

64:                                               ; preds = %5
  %65 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 2
  %66 = call i8* @strtol(i8* %65, i8** %13, i32 16)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @IMM, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** @REG_N, align 8
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %95

77:                                               ; preds = %5
  %78 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 1
  %79 = call i8* @strtol(i8* %78, i8** %13, i32 16)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @IMM, align 8
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  br label %95

86:                                               ; preds = %5, %5
  %87 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %88 = call i8* @strtol(i8* %87, i8** %13, i32 16)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** @IMM, align 8
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %5, %86, %77, %64, %51, %42, %33, %28, %23
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %171 [
    i32 131, label %99
    i32 142, label %99
    i32 135, label %99
    i32 133, label %99
    i32 129, label %99
    i32 130, label %104
    i32 141, label %104
    i32 134, label %104
    i32 132, label %104
    i32 128, label %104
    i32 139, label %109
    i32 140, label %118
    i32 138, label %127
    i32 137, label %140
    i32 136, label %153
    i32 144, label %162
    i32 143, label %162
  ]

99:                                               ; preds = %95, %95, %95, %95, %95
  %100 = load i8*, i8** @REG_M, align 8
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %171

104:                                              ; preds = %95, %95, %95, %95, %95
  %105 = load i8*, i8** @REG_N, align 8
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %171

109:                                              ; preds = %95
  %110 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 2
  %111 = call i8* @strtol(i8* %110, i8** %13, i32 16)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** @PCRELIMM, align 8
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %171

118:                                              ; preds = %95
  %119 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 2
  %120 = call i8* @strtol(i8* %119, i8** %13, i32 16)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load i8*, i8** @IMM, align 8
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %171

127:                                              ; preds = %95
  %128 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 2
  %129 = call i8* @strtol(i8* %128, i8** %13, i32 16)
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** @IMM, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load i8*, i8** @REG_M, align 8
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  br label %171

140:                                              ; preds = %95
  %141 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 2
  %142 = call i8* @strtol(i8* %141, i8** %13, i32 16)
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** @IMM, align 8
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i8*, i8** @REG_N, align 8
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  br label %171

153:                                              ; preds = %95
  %154 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 1
  %155 = call i8* @strtol(i8* %154, i8** %13, i32 16)
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  %158 = load i8*, i8** @IMM, align 8
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  br label %171

162:                                              ; preds = %95, %95
  %163 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %164 = call i8* @strtol(i8* %163, i8** %13, i32 16)
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  %167 = load i8*, i8** @IMM, align 8
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %95, %162, %153, %140, %127, %118, %109, %104, %99
  ret i32 0
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
