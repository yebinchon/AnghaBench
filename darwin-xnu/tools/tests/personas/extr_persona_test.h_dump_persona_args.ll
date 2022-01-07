; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_test.h_dump_persona_args.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_test.h_dump_persona_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.persona_args = type { i32, i32, %struct.kpersona_info }
%struct.kpersona_info = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\09 flags: 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"\09 %cuid: %d\00", align 1
@PA_HAS_UID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.persona_args*)* @dump_persona_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_persona_args(i8* %0, %struct.persona_args* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.persona_args*, align 8
  %5 = alloca %struct.kpersona_info*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.persona_args* %1, %struct.persona_args** %4, align 8
  %6 = load %struct.persona_args*, %struct.persona_args** %4, align 8
  %7 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %6, i32 0, i32 2
  store %struct.kpersona_info* %7, %struct.kpersona_info** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.persona_args*, %struct.persona_args** %4, align 8
  %15 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.persona_args*, %struct.persona_args** %4, align 8
  %19 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PA_HAS_UID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 43, i32 45
  %26 = load %struct.persona_args*, %struct.persona_args** %4, align 8
  %27 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.persona_args*, %struct.persona_args** %4, align 8
  %31 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.kpersona_info*, %struct.kpersona_info** %5, align 8
  %34 = call i32 @_dump_kpersona(i32* null, i32 %32, %struct.kpersona_info* %33)
  ret void
}

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @_dump_kpersona(i32*, i32, %struct.kpersona_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
