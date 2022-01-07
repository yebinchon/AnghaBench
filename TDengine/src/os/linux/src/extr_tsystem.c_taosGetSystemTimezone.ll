; ModuleID = '/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tsystem.c_taosGetSystemTimezone.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tsystem.c_taosGetSystemTimezone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"timezone\00", align 1
@TSDB_CFG_CSTATUS_DEFAULT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"/etc/timezone\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@timezone = common dso_local global i64 0, align 8
@MILLISECOND_PER_SECOND = common dso_local global i64 0, align 8
@MILLISECOND_PER_HOUR = common dso_local global i64 0, align 8
@daylight = common dso_local global i64 0, align 8
@tsTimezone = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"%s (%s, %s%02d00)\00", align 1
@tzname = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"timezone not configured, set to system default:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taosGetSystemTimezone() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = call %struct.TYPE_3__* @tsGetConfigOption(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %1, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %75

12:                                               ; preds = %0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TSDB_CFG_CSTATUS_DEFAULT, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %75

19:                                               ; preds = %12
  %20 = call i32 @time(i32* null)
  store i32 %20, i32* %2, align 4
  %21 = call i32 @localtime_r(i32* %2, %struct.tm* %3)
  %22 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %22, i32** %4, align 8
  %23 = bitcast [64 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 64, i1 false)
  %24 = load i32*, i32** %4, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @fread(i8* %27, i32 64, i32 1, i32* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @fclose(i32* %30)
  br label %32

32:                                               ; preds = %26, %19
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %34 = call i8* @strstr(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %37, %32
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %41 = call i64 @strlen(i8* %40)
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %45 = call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %44, i32 1)
  br label %46

46:                                               ; preds = %43, %39
  %47 = call i32 (...) @tzset()
  %48 = load i64, i64* @timezone, align 8
  %49 = sub nsw i64 0, %48
  %50 = load i64, i64* @MILLISECOND_PER_SECOND, align 8
  %51 = mul nsw i64 %49, %50
  %52 = load i64, i64* @MILLISECOND_PER_HOUR, align 8
  %53 = sdiv i64 %51, %52
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* @daylight, align 8
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %7, align 8
  %57 = load i32, i32* @tsTimezone, align 4
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %59 = load i8**, i8*** @tzname, align 8
  %60 = load i64, i64* @daylight, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp sge i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @abs(i64 %67)
  %69 = call i32 @sprintf(i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %58, i8* %62, i8* %66, i32 %68)
  %70 = load i64, i64* @TSDB_CFG_CSTATUS_DEFAULT, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* @tsTimezone, align 4
  %74 = call i32 @pPrint(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %46, %18, %11
  ret void
}

declare dso_local %struct.TYPE_3__* @tsGetConfigOption(i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @tzset(...) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @pPrint(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
