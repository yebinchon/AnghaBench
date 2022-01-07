; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_transmit.c_RedirectCopyDataToRegularFile.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_transmit.c_RedirectCopyDataToRegularFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@PG_WAIT_IO = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not append to received file: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RedirectCopyDataToRegularFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = call %struct.TYPE_6__* (...) @makeStringInfo()
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* @O_APPEND, align 4
  %12 = load i32, i32* @O_CREAT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @O_RDWR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @O_TRUNC, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PG_BINARY, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @S_IRUSR, align 4
  %21 = load i32, i32* @S_IWUSR, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @FileOpenForTransmit(i8* %23, i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @FileCompatFromFileStart(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = call i32 (...) @SendCopyInStart()
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = call i32 @ReceiveCopyData(%struct.TYPE_6__* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %62, %1
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %67

36:                                               ; preds = %32
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @PG_WAIT_IO, align 4
  %49 = call i32 @FileWriteCompat(i32* %8, i32 %44, i64 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %41
  %57 = load i32, i32* @ERROR, align 4
  %58 = call i32 (...) @errcode_for_file_access()
  %59 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 @ereport(i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %56, %41
  br label %62

62:                                               ; preds = %61, %36
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = call i32 @resetStringInfo(%struct.TYPE_6__* %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = call i32 @ReceiveCopyData(%struct.TYPE_6__* %65)
  store i32 %66, i32* %4, align 4
  br label %32

67:                                               ; preds = %32
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = call i32 @FreeStringInfo(%struct.TYPE_6__* %68)
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @FileClose(i32 %70)
  ret void
}

declare dso_local %struct.TYPE_6__* @makeStringInfo(...) #1

declare dso_local i32 @FileOpenForTransmit(i8*, i32, i32) #1

declare dso_local i32 @FileCompatFromFileStart(i32) #1

declare dso_local i32 @SendCopyInStart(...) #1

declare dso_local i32 @ReceiveCopyData(%struct.TYPE_6__*) #1

declare dso_local i32 @FileWriteCompat(i32*, i32, i64, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_6__*) #1

declare dso_local i32 @FreeStringInfo(%struct.TYPE_6__*) #1

declare dso_local i32 @FileClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
