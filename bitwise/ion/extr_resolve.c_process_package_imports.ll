; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_process_package_imports.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_process_package_imports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i64, i8*, %struct.TYPE_15__, i32, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64, i8**, i64, i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }

@DECL_NOTE = common dso_local global i64 0, align 8
@always_name = common dso_local global i64 0, align 8
@DECL_IMPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Import name must be lower case: '%s'\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to import package '%s'\00", align 1
@SYM_PACKAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_package_imports(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %166, %1
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %169

16:                                               ; preds = %10
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %19, i64 %20
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %4, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DECL_NOTE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %16
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @always_name, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %28
  br label %165

39:                                               ; preds = %16
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DECL_IMPORT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %164

45:                                               ; preds = %39
  store i8* null, i8** %5, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i8*, i8** %5, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 (i8*, i8*, i8*, ...) @buf_printf(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %51, %45
  store i64 0, i64* %6, align 8
  br label %60

60:                                               ; preds = %103, %59
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %61, %65
  br i1 %66, label %67, label %106

67:                                               ; preds = %60
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds i8*, i8** %71, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @str_islower(i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %67
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i8**, i8*** %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds i8*, i8** %84, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @fatal_error(i32 %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %77, %67
  %90 = load i8*, i8** %5, align 8
  %91 = load i64, i64* %6, align 8
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load i8**, i8*** %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds i8*, i8** %98, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i8*, i8*, i8*, ...) @buf_printf(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %94, i8* %101)
  br label %103

103:                                              ; preds = %89
  %104 = load i64, i64* %6, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %6, align 8
  br label %60

106:                                              ; preds = %60
  %107 = load i8*, i8** %5, align 8
  %108 = call %struct.TYPE_17__* @import_package(i8* %107)
  store %struct.TYPE_17__* %108, %struct.TYPE_17__** %7, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %110 = icmp ne %struct.TYPE_17__* %109, null
  br i1 %110, label %117, label %111

111:                                              ; preds = %106
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = call i32 @fatal_error(i32 %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %111, %106
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @buf_free(i8* %118)
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %122 = call i32 @import_package_symbols(%struct.TYPE_18__* %120, %struct.TYPE_17__* %121)
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %117
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %130 = call i32 @import_all_package_symbols(%struct.TYPE_17__* %129)
  br label %131

131:                                              ; preds = %128, %117
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  br label %152

140:                                              ; preds = %131
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load i8**, i8*** %143, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = sub i64 %148, 1
  %150 = getelementptr inbounds i8*, i8** %144, i64 %149
  %151 = load i8*, i8** %150, align 8
  br label %152

152:                                              ; preds = %140, %136
  %153 = phi i8* [ %139, %136 ], [ %151, %140 ]
  store i8* %153, i8** %8, align 8
  %154 = load i32, i32* @SYM_PACKAGE, align 4
  %155 = load i8*, i8** %8, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %157 = call %struct.TYPE_16__* @sym_new(i32 %154, i8* %155, %struct.TYPE_18__* %156)
  store %struct.TYPE_16__* %157, %struct.TYPE_16__** %9, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  store %struct.TYPE_17__* %158, %struct.TYPE_17__** %160, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %163 = call i32 @sym_global_put(i8* %161, %struct.TYPE_16__* %162)
  br label %164

164:                                              ; preds = %152, %39
  br label %165

165:                                              ; preds = %164, %38
  br label %166

166:                                              ; preds = %165
  %167 = load i64, i64* %3, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %3, align 8
  br label %10

169:                                              ; preds = %10
  ret void
}

declare dso_local i32 @buf_printf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @str_islower(i8*) #1

declare dso_local i32 @fatal_error(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_17__* @import_package(i8*) #1

declare dso_local i32 @buf_free(i8*) #1

declare dso_local i32 @import_package_symbols(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @import_all_package_symbols(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @sym_new(i32, i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @sym_global_put(i8*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
