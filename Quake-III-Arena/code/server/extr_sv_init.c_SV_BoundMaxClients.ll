; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_init.c_SV_BoundMaxClients.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_init.c_SV_BoundMaxClients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@qfalse = common dso_local global i32 0, align 4
@sv_maxclients = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@MAX_CLIENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_BoundMaxClients(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %4 = load i32, i32* @qfalse, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sv_maxclients, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  store i32 %4, i32* %6, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sv_maxclients, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = call i32 @Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sv_maxclients, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MAX_CLIENTS, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @MAX_CLIENTS, align 4
  %24 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = call i32 @Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %16
  br label %27

27:                                               ; preds = %26, %12
  ret void
}

declare dso_local i32 @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i32 @Cvar_Set(i8*, i32) #1

declare dso_local i32 @va(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
