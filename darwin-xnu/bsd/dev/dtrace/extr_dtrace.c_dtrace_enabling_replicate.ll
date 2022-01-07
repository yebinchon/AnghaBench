; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_enabling_replicate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_enabling_replicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_20__**, %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@DTRACE_PROVNAMELEN = common dso_local global i64 0, align 8
@DTRACE_MODNAMELEN = common dso_local global i64 0, align 8
@DTRACE_FUNCNAMELEN = common dso_local global i64 0, align 8
@DTRACE_NAMELEN = common dso_local global i64 0, align 8
@dtrace_retained = common dso_local global %struct.TYPE_19__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_18__*)* @dtrace_enabling_replicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_enabling_replicate(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @ENOENT, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %17 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %16)
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strlen(i32 %20)
  %22 = load i64, i64* @DTRACE_PROVNAMELEN, align 8
  %23 = icmp slt i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strlen(i32 %28)
  %30 = load i64, i64* @DTRACE_MODNAMELEN, align 8
  %31 = icmp slt i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @strlen(i32 %36)
  %38 = load i64, i64* @DTRACE_FUNCNAMELEN, align 8
  %39 = icmp slt i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @strlen(i32 %44)
  %46 = load i64, i64* @DTRACE_NAMELEN, align 8
  %47 = icmp slt i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = call %struct.TYPE_19__* @dtrace_enabling_create(i32* %51)
  store %struct.TYPE_19__* %52, %struct.TYPE_19__** %8, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** @dtrace_retained, align 8
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %9, align 8
  br label %54

54:                                               ; preds = %143, %3
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %56 = icmp ne %struct.TYPE_19__* %55, null
  br i1 %56, label %57, label %147

57:                                               ; preds = %54
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = icmp ne %struct.TYPE_17__* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @ASSERT(i32 %64)
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = icmp ne %struct.TYPE_17__* %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  br label %143

74:                                               ; preds = %57
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %139, %74
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %142

81:                                               ; preds = %75
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %84, i64 %86
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  store %struct.TYPE_20__* %88, %struct.TYPE_20__** %13, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  store %struct.TYPE_18__* %90, %struct.TYPE_18__** %14, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* @DTRACE_PROVNAMELEN, align 8
  %98 = call i64 @strncmp(i32 %93, i32 %96, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %81
  br label %139

101:                                              ; preds = %81
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* @DTRACE_MODNAMELEN, align 8
  %109 = call i64 @strncmp(i32 %104, i32 %107, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %139

112:                                              ; preds = %101
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* @DTRACE_FUNCNAMELEN, align 8
  %120 = call i64 @strncmp(i32 %115, i32 %118, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %139

123:                                              ; preds = %112
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* @DTRACE_NAMELEN, align 8
  %131 = call i64 @strncmp(i32 %126, i32 %129, i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  br label %139

134:                                              ; preds = %123
  store i32 1, i32* %10, align 4
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %138 = call i32 @dtrace_enabling_addlike(%struct.TYPE_19__* %135, %struct.TYPE_20__* %136, %struct.TYPE_18__* %137)
  br label %139

139:                                              ; preds = %134, %133, %122, %111, %100
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %75

142:                                              ; preds = %75
  br label %143

143:                                              ; preds = %142, %73
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %145, align 8
  store %struct.TYPE_19__* %146, %struct.TYPE_19__** %9, align 8
  br label %54

147:                                              ; preds = %54
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %152 = call i32 @dtrace_enabling_retain(%struct.TYPE_19__* %151)
  store i32 %152, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %150, %147
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %156 = call i32 @dtrace_enabling_destroy(%struct.TYPE_19__* %155)
  %157 = load i32, i32* %11, align 4
  store i32 %157, i32* %4, align 4
  br label %159

158:                                              ; preds = %150
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %154
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local %struct.TYPE_19__* @dtrace_enabling_create(i32*) #1

declare dso_local i64 @strncmp(i32, i32, i64) #1

declare dso_local i32 @dtrace_enabling_addlike(%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_18__*) #1

declare dso_local i32 @dtrace_enabling_retain(%struct.TYPE_19__*) #1

declare dso_local i32 @dtrace_enabling_destroy(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
