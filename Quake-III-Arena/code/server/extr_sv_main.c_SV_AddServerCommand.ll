; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_main.c_SV_AddServerCommand.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_main.c_SV_AddServerCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8** }

@MAX_RELIABLE_COMMANDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"===== pending server commands =====\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cmd %5d: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Server command overflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_AddServerCommand(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %13, %16
  %18 = load i32, i32* @MAX_RELIABLE_COMMANDS, align 4
  %19 = add nsw i32 %18, 1
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %46, %21
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sle i32 %28, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MAX_RELIABLE_COMMANDS, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %38, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %37, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8* %44)
  br label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %27

49:                                               ; preds = %27
  %50 = load i32, i32* %6, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %50, i8* %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = call i32 @SV_DropClient(%struct.TYPE_4__* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %71

55:                                               ; preds = %2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MAX_RELIABLE_COMMANDS, align 4
  %60 = sub nsw i32 %59, 1
  %61 = and i32 %58, %60
  store i32 %61, i32* %5, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @Q_strncpyz(i8* %68, i8* %69, i32 8)
  br label %71

71:                                               ; preds = %55, %49
  ret void
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @SV_DropClient(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
