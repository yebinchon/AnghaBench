; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_prot.c_do_list_tubes.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_prot.c_do_list_tubes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i8* }

@MSG_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@Copy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"- %s\0A\00", align 1
@STATE_SEND_JOB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"OK %zu\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*)* @do_list_tubes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_list_tubes(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  store i64 6, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %30, %2
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %9
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %18, i64 %19
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %6, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = add nsw i32 3, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %15
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %7, align 8
  br label %9

33:                                               ; preds = %9
  %34 = load i64, i64* %8, align 8
  %35 = call %struct.TYPE_14__* @allocate_job(i64 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %37, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = icmp ne %struct.TYPE_14__* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %33
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = load i32, i32* @MSG_OUT_OF_MEMORY, align 4
  %45 = call i32 @reply_serr(%struct.TYPE_13__* %43, i32 %44)
  br label %104

46:                                               ; preds = %33
  %47 = load i32, i32* @Copy, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %5, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %58, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %60 = load i8*, i8** %5, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %5, align 8
  store i64 0, i64* %7, align 8
  br label %63

63:                                               ; preds = %89, %46
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %63
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %72, i64 %73
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %6, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = add nsw i32 4, %80
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %76, i32 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  %86 = load i8*, i8** %5, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %5, align 8
  br label %89

89:                                               ; preds = %69
  %90 = load i64, i64* %7, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %7, align 8
  br label %63

92:                                               ; preds = %63
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 13, i8* %94, align 1
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  store i8 10, i8* %96, align 1
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %100 = load i32, i32* @STATE_SEND_JOB, align 4
  %101 = load i64, i64* %8, align 8
  %102 = sub i64 %101, 2
  %103 = call i32 @reply_line(%struct.TYPE_13__* %99, i32 %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %92, %42
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_14__* @allocate_job(i64) #1

declare dso_local i32 @reply_serr(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @reply_line(%struct.TYPE_13__*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
