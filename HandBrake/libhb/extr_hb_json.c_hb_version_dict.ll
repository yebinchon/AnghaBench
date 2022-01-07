; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb_json.c_hb_version_dict.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb_json.c_hb_version_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"{s:o, s:o, s:o, s{s:o, s:o, s:o}, s:o, s:o, s:o, s:o, s:o}\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@HB_PROJECT_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Official\00", align 1
@HB_PROJECT_REPO_OFFICIAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@HB_PROJECT_REPO_TYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Major\00", align 1
@HB_PROJECT_VERSION_MAJOR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"Minor\00", align 1
@HB_PROJECT_VERSION_MINOR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@HB_PROJECT_VERSION_POINT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"VersionString\00", align 1
@HB_PROJECT_VERSION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"RepoHash\00", align 1
@HB_PROJECT_REPO_HASH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"RepoDate\00", align 1
@HB_PROJECT_REPO_DATE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"System\00", align 1
@HB_PROJECT_HOST_SYSTEMF = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"Arch\00", align 1
@HB_PROJECT_HOST_ARCH = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"json pack failure: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_version_dict() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = load i32, i32* @HB_PROJECT_NAME, align 4
  %5 = call i32 @hb_value_string(i32 %4)
  %6 = load i32, i32* @HB_PROJECT_REPO_OFFICIAL, align 4
  %7 = call i32 @hb_value_bool(i32 %6)
  %8 = load i32, i32* @HB_PROJECT_REPO_TYPE, align 4
  %9 = call i32 @hb_value_string(i32 %8)
  %10 = load i32, i32* @HB_PROJECT_VERSION_MAJOR, align 4
  %11 = call i32 @hb_value_int(i32 %10)
  %12 = load i32, i32* @HB_PROJECT_VERSION_MINOR, align 4
  %13 = call i32 @hb_value_int(i32 %12)
  %14 = load i32, i32* @HB_PROJECT_VERSION_POINT, align 4
  %15 = call i32 @hb_value_int(i32 %14)
  %16 = load i32, i32* @HB_PROJECT_VERSION, align 4
  %17 = call i32 @hb_value_string(i32 %16)
  %18 = load i32, i32* @HB_PROJECT_REPO_HASH, align 4
  %19 = call i32 @hb_value_string(i32 %18)
  %20 = load i32, i32* @HB_PROJECT_REPO_DATE, align 4
  %21 = call i32 @hb_value_string(i32 %20)
  %22 = load i32, i32* @HB_PROJECT_HOST_SYSTEMF, align 4
  %23 = call i32 @hb_value_string(i32 %22)
  %24 = load i32, i32* @HB_PROJECT_HOST_ARCH, align 4
  %25 = call i32 @hb_value_string(i32 %24)
  %26 = call i32* @json_pack_ex(%struct.TYPE_3__* %3, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %25)
  store i32* %26, i32** %2, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @hb_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %31)
  store i32* null, i32** %1, align 8
  br label %35

33:                                               ; preds = %0
  %34 = load i32*, i32** %2, align 8
  store i32* %34, i32** %1, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32*, i32** %1, align 8
  ret i32* %36
}

declare dso_local i32* @json_pack_ex(%struct.TYPE_3__*, i32, i8*, i8*, i32, i8*, i32, i8*, i32, i8*, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @hb_value_string(i32) #1

declare dso_local i32 @hb_value_bool(i32) #1

declare dso_local i32 @hb_value_int(i32) #1

declare dso_local i32 @hb_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
