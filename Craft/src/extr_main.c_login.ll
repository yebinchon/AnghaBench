; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_login.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"Contacting login server for username: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Successfully authenticated with the login server\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to authenticate with the login server\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Logging in anonymously\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @login() #0 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca [128 x i8], align 16
  %3 = alloca [128 x i8], align 16
  %4 = bitcast [128 x i8]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 128, i1 false)
  %5 = bitcast [128 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 128, i1 false)
  %6 = bitcast [128 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 128, i1 false)
  %7 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %9 = call i64 @db_auth_get_selected(i8* %7, i32 128, i8* %8, i32 128)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %0
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %17 = call i64 @get_access_token(i8* %14, i32 128, i8* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %23 = call i32 @client_login(i8* %21, i8* %22)
  br label %27

24:                                               ; preds = %11
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @client_login(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  br label %31

28:                                               ; preds = %0
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %30 = call i32 @client_login(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %27
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @db_auth_get_selected(i8*, i32, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @get_access_token(i8*, i32, i8*, i8*) #2

declare dso_local i32 @client_login(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
