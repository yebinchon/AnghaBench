; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_TtcPrintSummary.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_TtcPrintSummary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i32, i32, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i32] [i32 37, i32 45, i32 51, i32 53, i32 115, i32 32, i32 37, i32 115, i32 0], align 4
@.str.1 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"TTC_SUMMARY_BAR\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"TTC_SUMMARY_TITLE\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"TTC_SUMMARY_HOST\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"TTC_SUMMARY_PORT\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"TTC_SUMMARY_NUMTCP\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"TTC_SUMMARY_TYPE\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"TTC_SPAN_STR\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"TTC_SUMMARY_SPAN\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"TTC_SUMMARY_ETHER\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"SEC_NO\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"SEC_YES\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"TTC_SUMMARY_DOUBLE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TtcPrintSummary(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load i32, i32* @MAX_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @MAX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  store i8* bitcast ([9 x i32]* @.str to i8*), i8** %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = icmp eq %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %186

18:                                               ; preds = %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @TtPrint(i32 %21, i32 %24, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @TtPrint(i32 %28, i32 %31, i8* %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 @TtPrint(i32 %36, i32 %39, i8* %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @TtPrint(i32 %44, i32 %47, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  %49 = trunc i64 %13 to i32
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @StrToUni(i8* %14, i32 %49, i32 %52)
  %54 = trunc i64 %9 to i32
  %55 = load i8*, i8** %6, align 8
  %56 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %57 = call i32 (i8*, i32, i8*, ...) @UniFormat(i8* %11, i32 %54, i8* %55, i8* %56, i8* %14)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @TtPrint(i32 %60, i32 %63, i8* %11)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @UniToStru(i8* %14, i32 %67)
  %69 = trunc i64 %9 to i32
  %70 = load i8*, i8** %6, align 8
  %71 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %72 = call i32 (i8*, i32, i8*, ...) @UniFormat(i8* %11, i32 %69, i8* %70, i8* %71, i8* %14)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @TtPrint(i32 %75, i32 %78, i8* %11)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @UniToStru(i8* %14, i32 %82)
  %84 = trunc i64 %9 to i32
  %85 = load i8*, i8** %6, align 8
  %86 = call i8* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %87 = call i32 (i8*, i32, i8*, ...) @UniFormat(i8* %11, i32 %84, i8* %85, i8* %86, i8* %14)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @TtPrint(i32 %90, i32 %93, i8* %11)
  %95 = trunc i64 %9 to i32
  %96 = load i8*, i8** %6, align 8
  %97 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @GetTtcTypeStr(i32 %100)
  %102 = call i32 (i8*, i32, i8*, ...) @UniFormat(i8* %11, i32 %95, i8* %96, i8* %97, i8* %101)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @TtPrint(i32 %105, i32 %108, i8* %11)
  %110 = trunc i64 %13 to i32
  %111 = call i8* @_UU(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = sitofp i64 %114 to double
  %116 = fdiv double %115, 1.000000e+03
  %117 = call i32 (i8*, i32, i8*, ...) @UniFormat(i8* %14, i32 %110, i8* %111, double %116)
  %118 = trunc i64 %9 to i32
  %119 = load i8*, i8** %6, align 8
  %120 = call i8* @_UU(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %121 = call i32 (i8*, i32, i8*, ...) @UniFormat(i8* %11, i32 %118, i8* %119, i8* %120, i8* %14)
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @TtPrint(i32 %124, i32 %127, i8* %11)
  %129 = trunc i64 %9 to i32
  %130 = load i8*, i8** %6, align 8
  %131 = call i8* @_UU(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %18
  %137 = call i8* @_UU(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %140

138:                                              ; preds = %18
  %139 = call i8* @_UU(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i8* [ %137, %136 ], [ %139, %138 ]
  %142 = call i32 (i8*, i32, i8*, ...) @UniFormat(i8* %11, i32 %129, i8* %130, i8* %131, i8* %141)
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @TtPrint(i32 %145, i32 %148, i8* %11)
  %150 = trunc i64 %9 to i32
  %151 = load i8*, i8** %6, align 8
  %152 = call i8* @_UU(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %140
  %158 = call i8* @_UU(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %161

159:                                              ; preds = %140
  %160 = call i8* @_UU(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i8* [ %158, %157 ], [ %160, %159 ]
  %163 = call i32 (i8*, i32, i8*, ...) @UniFormat(i8* %11, i32 %150, i8* %151, i8* %152, i8* %162)
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @TtPrint(i32 %166, i32 %169, i8* %11)
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i8* @_UU(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %178 = call i32 @TtPrint(i32 %173, i32 %176, i8* %177)
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @TtPrint(i32 %181, i32 %184, i8* bitcast ([1 x i32]* @.str.1 to i8*))
  store i32 0, i32* %7, align 4
  br label %186

186:                                              ; preds = %161, %17
  %187 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %187)
  %188 = load i32, i32* %7, align 4
  switch i32 %188, label %190 [
    i32 0, label %189
    i32 1, label %189
  ]

189:                                              ; preds = %186, %186
  ret void

190:                                              ; preds = %186
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TtPrint(i32, i32, i8*) #2

declare dso_local i8* @_UU(i8*) #2

declare dso_local i32 @StrToUni(i8*, i32, i32) #2

declare dso_local i32 @UniFormat(i8*, i32, i8*, ...) #2

declare dso_local i32 @UniToStru(i8*, i32) #2

declare dso_local i8* @GetTtcTypeStr(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
