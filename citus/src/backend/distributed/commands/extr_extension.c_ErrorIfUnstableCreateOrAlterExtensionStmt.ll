; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_extension.c_ErrorIfUnstableCreateOrAlterExtensionStmt.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_extension.c_ErrorIfUnstableCreateOrAlterExtensionStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CITUS_EXTENSIONVERSION = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"specified version incompatible with loaded Citus library\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Loaded library requires %s, but %s was specified.\00", align 1
@CITUS_MAJORVERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"If a newer library is present, restart the database and try the command again.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ErrorIfUnstableCreateOrAlterExtensionStmt(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i8* @ExtractNewExtensionVersion(i32* %4)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @CITUS_EXTENSIONVERSION, align 4
  %11 = call i32 @MajorVersionsCompatible(i8* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @ERROR, align 4
  %15 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @CITUS_MAJORVERSION, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @errdetail(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %16, i8* %17)
  %19 = call i32 @errhint(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @ereport(i32 %14, i32 %19)
  br label %21

21:                                               ; preds = %13, %8
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ERROR, align 4
  %24 = call i32 @CheckAvailableVersion(i32 %23)
  br label %25

25:                                               ; preds = %22, %21
  ret void
}

declare dso_local i8* @ExtractNewExtensionVersion(i32*) #1

declare dso_local i32 @MajorVersionsCompatible(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i32, i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @CheckAvailableVersion(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
