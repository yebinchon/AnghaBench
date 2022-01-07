; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_dvdnav.c_PttDuration.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_dvdnav.c_PttDuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32*, i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@MAX_PGCN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid PGC ID %d, skipping\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"scan: pgn %d not valid, skipping\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"scan: pgc not valid, skipping\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"invalid PGC cell_playback table, skipping\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, i32, i32, i32*, i32*)* @PttDuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @PttDuration(%struct.TYPE_19__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 0, i64* %15, align 8
  %22 = load i32*, i32** %10, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* @MAX_PGCN, align 4
  %24 = sdiv i32 %23, 32
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %19, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %20, align 8
  %28 = call i32 @PgcWalkInit(i32* %27)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %77, label %65

65:                                               ; preds = %5
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %66, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @MAX_PGCN, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73, %65, %5
  %78 = load i32, i32* %12, align 4
  %79 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %78)
  store i64 0, i64* %6, align 8
  store i32 1, i32* %21, align 4
  br label %185

80:                                               ; preds = %73
  %81 = load i32, i32* %13, align 4
  %82 = icmp sle i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %13, align 4
  %85 = icmp sgt i32 %84, 99
  br i1 %85, label %86, label %89

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %13, align 4
  %88 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  store i64 0, i64* %6, align 8
  store i32 1, i32* %21, align 4
  br label %185

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %178, %89
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  store %struct.TYPE_18__* %101, %struct.TYPE_18__** %14, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %103 = icmp ne %struct.TYPE_18__* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %90
  %105 = load i32*, i32** %10, align 8
  store i32 0, i32* %105, align 4
  store i64 0, i64* %15, align 8
  %106 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %183

107:                                              ; preds = %90
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = icmp eq %struct.TYPE_17__* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32*, i32** %10, align 8
  store i32 0, i32* %113, align 4
  store i64 0, i64* %15, align 8
  %114 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %183

115:                                              ; preds = %107
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 1, i32* %13, align 4
  br label %178

122:                                              ; preds = %115
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 4
  %125 = call i64 @dvdtime2msec(i32* %124)
  %126 = mul nsw i64 90, %125
  %127 = load i64, i64* %15, align 8
  %128 = add nsw i64 %127, %126
  store i64 %128, i64* %15, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %136, 1
  store i32 %137, i32* %16, align 4
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %140, 1
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %18, align 4
  br label %143

143:                                              ; preds = %171, %122
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %17, align 4
  %146 = icmp sle i32 %144, %145
  br i1 %146, label %147, label %175

147:                                              ; preds = %143
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %155, 1
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %158, align 8
  %160 = load i32, i32* %18, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %156, %164
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, %165
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %166, align 4
  br label %171

171:                                              ; preds = %147
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %173 = load i32, i32* %18, align 4
  %174 = call i32 @FindNextCell(%struct.TYPE_18__* %172, i32 %173)
  store i32 %174, i32* %18, align 4
  br label %143

175:                                              ; preds = %143
  %176 = load i32, i32* %12, align 4
  %177 = load i32*, i32** %11, align 8
  store i32 %176, i32* %177, align 4
  store i32 1, i32* %13, align 4
  br label %178

178:                                              ; preds = %175, %121
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @NextPgcn(%struct.TYPE_19__* %179, i32 %180, i32* %27)
  store i32 %181, i32* %12, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %90, label %183

183:                                              ; preds = %178, %112, %104
  %184 = load i64, i64* %15, align 8
  store i64 %184, i64* %6, align 8
  store i32 1, i32* %21, align 4
  br label %185

185:                                              ; preds = %183, %86, %77
  %186 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %186)
  %187 = load i64, i64* %6, align 8
  ret i64 %187
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PgcWalkInit(i32*) #2

declare dso_local i32 @hb_log(i8*, ...) #2

declare dso_local i64 @dvdtime2msec(i32*) #2

declare dso_local i32 @FindNextCell(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @NextPgcn(%struct.TYPE_19__*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
