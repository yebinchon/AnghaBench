; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_data_fetch_protocol.c_FetchRegularFileAsSuperUser.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_data_fetch_protocol.c_FetchRegularFileAsSuperUser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s_%0*u%s\00", align 1
@MIN_TASK_FILENAME_WIDTH = common dso_local global i32 0, align 4
@ATTEMPT_FILE_SUFFIX = common dso_local global i32 0, align 4
@TRANSMIT_WITH_USER_COMMAND = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not receive file \22%s\22 from %s:%u\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"could not rename file \22%s\22 to \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.TYPE_8__*, %struct.TYPE_8__*)* @FetchRegularFileAsSuperUser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FetchRegularFileAsSuperUser(i8* %0, i32 %1, %struct.TYPE_8__* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  store i8* null, i8** %9, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  %16 = call i8* (...) @CurrentUserName()
  store i8* %16, i8** %12, align 8
  %17 = call i32 (...) @random()
  store i32 %17, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = call %struct.TYPE_8__* (...) @makeStringInfo()
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %10, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MIN_TASK_FILENAME_WIDTH, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @ATTEMPT_FILE_SUFFIX, align 4
  %26 = call i32 (%struct.TYPE_8__*, i8*, i32, i32, ...) @appendStringInfo(%struct.TYPE_8__* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = call %struct.TYPE_8__* (...) @makeStringInfo()
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %11, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %29 = load i32, i32* @TRANSMIT_WITH_USER_COMMAND, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @quote_literal_cstr(i8* %35)
  %37 = call i32 (%struct.TYPE_8__*, i8*, i32, i32, ...) @appendStringInfo(%struct.TYPE_8__* %28, i8* %31, i32 %34, i32 %36)
  %38 = call i8* (...) @CitusExtensionOwnerName()
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %44 = call i32 @ReceiveRegularFile(i8* %39, i32 %40, i8* %41, %struct.TYPE_8__* %42, %struct.TYPE_8__* %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %4
  %48 = load i32, i32* @ERROR, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i8*, i32, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %51, i8* %52, i32 %53)
  %55 = call i32 @ereport(i32 %48, i32 %54)
  br label %56

56:                                               ; preds = %47, %4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @rename(i32 %59, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %56
  %67 = load i32, i32* @ERROR, align 4
  %68 = call i32 (...) @errcode_for_file_access()
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 (i8*, i32, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %71, i8* %76)
  %78 = call i32 @ereport(i32 %67, i32 %77)
  br label %79

79:                                               ; preds = %66, %56
  ret void
}

declare dso_local i8* @CurrentUserName(...) #1

declare dso_local i32 @random(...) #1

declare dso_local %struct.TYPE_8__* @makeStringInfo(...) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_8__*, i8*, i32, i32, ...) #1

declare dso_local i32 @quote_literal_cstr(i8*) #1

declare dso_local i8* @CitusExtensionOwnerName(...) #1

declare dso_local i32 @ReceiveRegularFile(i8*, i32, i8*, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i8*, ...) #1

declare dso_local i32 @rename(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
