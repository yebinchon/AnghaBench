; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_prtfile.c_WritePortalFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_prtfile.c_WritePortalFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"--- WritePortalFile ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s.prt\00", align 1
@source = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"writing %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@pf = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Error opening %s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PORTALFILE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@num_visclusters = common dso_local global i32 0, align 4
@num_visportals = common dso_local global i32 0, align 4
@num_solidfaces = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WritePortalFile(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [1024 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = call i32 @qprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %6 = load i8*, i8** @source, align 8
  %7 = call i32 @sprintf(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %6)
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %9 = call i32 @_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %8)
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %11 = call i32 @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %11, i32* @pf, align 4
  %12 = load i32, i32* @pf, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %16 = call i32 @Error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* @pf, align 4
  %19 = load i8*, i8** @PORTALFILE, align 8
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @pf, align 4
  %22 = load i32, i32* @num_visclusters, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @pf, align 4
  %25 = load i32, i32* @num_visportals, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @pf, align 4
  %28 = load i32, i32* @num_solidfaces, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @WritePortalFile_r(i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @WriteFaceFile_r(i32 %36)
  %38 = load i32, i32* @pf, align 4
  %39 = call i32 @fclose(i32 %38)
  ret void
}

declare dso_local i32 @qprintf(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @_printf(i8*, i8*) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @Error(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @WritePortalFile_r(i32) #1

declare dso_local i32 @WriteFaceFile_r(i32) #1

declare dso_local i32 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
