; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_os.c_print_flags_usage.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_os.c_print_flags_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8*, i32, i8**, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8**, i32* }

@.str = private unnamed_addr constant [8 x i8] c"Flags:\0A\00", align 1
@flag_defs = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%s <%s>\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"(default: %s)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s <\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c" (default: %s)\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c" -%-32s %s%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_flags_usage() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  br label %9

9:                                                ; preds = %141, %0
  %10 = load i64, i64* %1, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @flag_defs, align 8
  %12 = call i64 @buf_len(%struct.TYPE_6__* %11)
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %144

14:                                               ; preds = %9
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @flag_defs, align 8
  %16 = load i64, i64* %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %16
  %18 = bitcast %struct.TYPE_6__* %2 to i8*
  %19 = bitcast %struct.TYPE_6__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 64, i1 false)
  %20 = bitcast [256 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 256, i1 false)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %123 [
    i32 128, label %23
    i32 129, label %50
    i32 130, label %122
  ]

23:                                               ; preds = %14
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  br label %34

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i8* [ %32, %30 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %33 ]
  %36 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %24, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %26, i8* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %43, i32 256, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %42, %34
  br label %128

50:                                               ; preds = %14
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %52 = getelementptr inbounds i8, i8* %51, i64 256
  store i8* %52, i8** %5, align 8
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %54, i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  %64 = load i8*, i8** %6, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %110, %50
  %68 = load i32, i32* %7, align 4
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %113

72:                                               ; preds = %67
  %73 = load i8*, i8** %6, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 4
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %73, i32 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %83, i8* %89)
  %91 = load i8*, i8** %6, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %94, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %72
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 4
  %103 = load i8**, i8*** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %101, i32 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %100, %72
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %67

113:                                              ; preds = %67
  %114 = load i8*, i8** %6, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %114, i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %128

122:                                              ; preds = %14
  br label %123

123:                                              ; preds = %14, %122
  %124 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %124, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %123, %113, %49
  %129 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 5
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 5
  %135 = load i8*, i8** %134, align 8
  br label %137

136:                                              ; preds = %128
  br label %137

137:                                              ; preds = %136, %133
  %138 = phi i8* [ %135, %133 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %136 ]
  %139 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %129, i8* %138, i8* %139)
  br label %141

141:                                              ; preds = %137
  %142 = load i64, i64* %1, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %1, align 8
  br label %9

144:                                              ; preds = %9
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @buf_len(%struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
