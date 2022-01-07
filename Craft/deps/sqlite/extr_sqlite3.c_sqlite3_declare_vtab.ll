; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_declare_vtab.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_declare_vtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i64, i64 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_16__*, i64, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32, i64, i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MISUSE = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@TF_Virtual = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_declare_vtab(%struct.TYPE_18__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @SQLITE_OK, align 4
  store i32 %10, i32* %7, align 4
  store i8* null, i8** %9, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @sqlite3_mutex_enter(i32 %13)
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %18 = icmp ne %struct.TYPE_17__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %8, align 8
  %25 = icmp ne %struct.TYPE_19__* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = load i32, i32* @SQLITE_MISUSE, align 4
  %29 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @sqlite3Error(%struct.TYPE_18__* %27, i32 %28, i8* null)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sqlite3_mutex_leave(i32 %32)
  %34 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %34, i32* %3, align 4
  br label %171

35:                                               ; preds = %19
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @TF_Virtual, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %45 = call %struct.TYPE_20__* @sqlite3StackAllocZero(%struct.TYPE_18__* %44, i32 32)
  store %struct.TYPE_20__* %45, %struct.TYPE_20__** %6, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %47 = icmp eq %struct.TYPE_20__* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %49, i32* %7, align 4
  br label %156

50:                                               ; preds = %35
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 4
  store %struct.TYPE_18__* %53, %struct.TYPE_18__** %55, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load i32, i32* @SQLITE_OK, align 4
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @sqlite3RunParser(%struct.TYPE_20__* %59, i8* %60, i8** %9)
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %122

63:                                               ; preds = %50
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = icmp ne %struct.TYPE_16__* %66, null
  br i1 %67, label %68, label %122

68:                                               ; preds = %63
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %122, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %122, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @TF_Virtual, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %122

89:                                               ; preds = %80
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %117, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  br label %117

117:                                              ; preds = %94, %89
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %121, align 8
  br label %135

122:                                              ; preds = %80, %73, %68, %63, %50
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = load i32, i32* @SQLITE_ERROR, align 4
  %125 = load i8*, i8** %9, align 8
  %126 = icmp ne i8* %125, null
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* null
  %129 = load i8*, i8** %9, align 8
  %130 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @sqlite3Error(%struct.TYPE_18__* %123, i32 %124, i8* %128, i8* %129)
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 @sqlite3DbFree(%struct.TYPE_18__* %131, i8* %132)
  %134 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %122, %117
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  store i32 0, i32* %137, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @sqlite3VdbeFinalize(i64 %145)
  br label %147

147:                                              ; preds = %142, %135
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = call i32 @sqlite3DeleteTable(%struct.TYPE_18__* %148, %struct.TYPE_16__* %151)
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %155 = call i32 @sqlite3StackFree(%struct.TYPE_18__* %153, %struct.TYPE_20__* %154)
  br label %156

156:                                              ; preds = %147, %48
  %157 = load i32, i32* %7, align 4
  %158 = and i32 %157, 255
  %159 = load i32, i32* %7, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @sqlite3ApiExit(%struct.TYPE_18__* %163, i32 %164)
  store i32 %165, i32* %7, align 4
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @sqlite3_mutex_leave(i32 %168)
  %170 = load i32, i32* %7, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %156, %26
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3Error(%struct.TYPE_18__*, i32, i8*, ...) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_20__* @sqlite3StackAllocZero(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @sqlite3RunParser(%struct.TYPE_20__*, i8*, i8**) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @sqlite3VdbeFinalize(i64) #1

declare dso_local i32 @sqlite3DeleteTable(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

declare dso_local i32 @sqlite3StackFree(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
