; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/profiling/extr_profile-mk.c_kmstartup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/profiling/extr_profile-mk.c_kmstartup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.profile_vars = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@pstart = common dso_local global i32* null, align 8
@HISTFRACTION = common dso_local global i32 0, align 4
@etext = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PROFILE_GPROF = common dso_local global i32 0, align 4
@PROFILE_ALLOC_MEM_YES = common dso_local global i32 0, align 4
@ACONTEXT_PROFIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Profiling kernel, s_textsize=%ld, monsize=%ld [0x%lx..0x%lx], cpu = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmstartup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.profile_vars*, align 8
  %6 = load i32*, i32** @pstart, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = ptrtoint i32* %7 to i32
  %9 = load i32, i32* @HISTFRACTION, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = call i32 @ROUNDDOWN(i32 %8, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32*, i32** @etext, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = ptrtoint i32* %15 to i32
  %17 = load i32, i32* @HISTFRACTION, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32 @ROUNDUP(i32 %16, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @HISTFRACTION, align 4
  %27 = sdiv i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %2, align 4
  %31 = call %struct.profile_vars* @PROFILE_VARS(i32 0)
  store %struct.profile_vars* %31, %struct.profile_vars** %5, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %34 = getelementptr inbounds %struct.profile_vars, %struct.profile_vars* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 4
  %35 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %36 = load i32, i32* @PROFILE_GPROF, align 4
  %37 = load i32, i32* @PROFILE_ALLOC_MEM_YES, align 4
  %38 = call i32 @_profile_md_init(%struct.profile_vars* %35, i32 %36, i32 %37)
  %39 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @ACONTEXT_PROFIL, align 4
  %42 = call i32 @_profile_alloc(%struct.profile_vars* %39, i32 %40, i32 %41)
  %43 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %44 = getelementptr inbounds %struct.profile_vars, %struct.profile_vars* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %47 = getelementptr inbounds %struct.profile_vars, %struct.profile_vars* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %51 = getelementptr inbounds %struct.profile_vars, %struct.profile_vars* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %1, align 4
  %54 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %55 = getelementptr inbounds %struct.profile_vars, %struct.profile_vars* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* %2, align 4
  %58 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %59 = getelementptr inbounds %struct.profile_vars, %struct.profile_vars* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  store i32 %57, i32* %60, align 4
  %61 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %62 = getelementptr inbounds %struct.profile_vars, %struct.profile_vars* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  store i32 4, i32* %63, align 8
  %64 = load i32, i32* @HISTFRACTION, align 4
  %65 = sdiv i32 65536, %64
  %66 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %67 = getelementptr inbounds %struct.profile_vars, %struct.profile_vars* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = udiv i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %74 = getelementptr inbounds %struct.profile_vars, %struct.profile_vars* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %77 = getelementptr inbounds %struct.profile_vars, %struct.profile_vars* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %80 = getelementptr inbounds %struct.profile_vars, %struct.profile_vars* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %83 = getelementptr inbounds %struct.profile_vars, %struct.profile_vars* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %85 = getelementptr inbounds %struct.profile_vars, %struct.profile_vars* %84, i32 0, i32 2
  store i32 1, i32* %85, align 8
  %86 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %87 = getelementptr inbounds %struct.profile_vars, %struct.profile_vars* %86, i32 0, i32 5
  store i64 0, i64* %87, align 8
  %88 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %89 = getelementptr inbounds %struct.profile_vars, %struct.profile_vars* %88, i32 0, i32 3
  store i32 1, i32* %89, align 4
  %90 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %91 = getelementptr inbounds %struct.profile_vars, %struct.profile_vars* %90, i32 0, i32 4
  store i32 1, i32* %91, align 8
  %92 = load %struct.profile_vars*, %struct.profile_vars** %5, align 8
  %93 = getelementptr inbounds %struct.profile_vars, %struct.profile_vars* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %0
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %2, align 4
  %100 = sext i32 %99 to i64
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = call i32 @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %98, i64 %100, i64 %102, i64 %104, i32 0)
  br label %106

106:                                              ; preds = %96, %0
  %107 = call i32 (...) @_profile_md_start()
  ret void
}

declare dso_local i32 @ROUNDDOWN(i32, i32) #1

declare dso_local i32 @ROUNDUP(i32, i32) #1

declare dso_local %struct.profile_vars* @PROFILE_VARS(i32) #1

declare dso_local i32 @_profile_md_init(%struct.profile_vars*, i32, i32) #1

declare dso_local i32 @_profile_alloc(%struct.profile_vars*, i32, i32) #1

declare dso_local i32 @printf(i8*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @_profile_md_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
