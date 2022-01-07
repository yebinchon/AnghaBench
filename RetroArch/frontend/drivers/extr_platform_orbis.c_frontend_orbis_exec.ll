; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_orbis.c_frontend_orbis_exec.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_orbis.c_frontend_orbis_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RARCH_PATH_CONTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Attempt to load executable: [%s].\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Attempt to load executable: %d [%s].\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @frontend_orbis_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_orbis_exec(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [512 x i8], align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast [512 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 512, i1 false)
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %2
  %11 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %12 = call i32 @path_is_empty(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 %16
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %23 = call i32 @path_get(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 512, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 @strlcat(i8* %21, i32 %23, i32 %27)
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = call i64 @strlen(i8* %32)
  %34 = add nsw i64 %33, 1
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %14, %10, %2
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %6, align 4
  %43 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %44 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %42, i8* %43)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @path_is_empty(i32) #2

declare dso_local i32 @strlcat(i8*, i32, i32) #2

declare dso_local i32 @path_get(i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @RARCH_LOG(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
