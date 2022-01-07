; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpuid.c_cpuid_set_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpuid.c_cpuid_set_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i64, i8*, i32 }

@cpuid_cpu_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TRUE = common dso_local global i64 0, align 8
@CPUID_VID_INTEL = common dso_local global i32 0, align 4
@CPUID_STRING_UNKNOWN = common dso_local global i32 0, align 4
@CPUFAMILY_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Unsupported CPU\00", align 1
@CPU_TYPE_X86 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"-enable_x86_64h\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"-disable_x86_64h\00", align 1
@CPUID_X86_64_H_FEATURE_SUBSET = common dso_local global i32 0, align 4
@CPUID_X86_64_H_EXTFEATURE_SUBSET = common dso_local global i32 0, align 4
@CPUID_X86_64_H_LEAF7_FEATURE_SUBSET = common dso_local global i32 0, align 4
@CPU_SUBTYPE_X86_64_H = common dso_local global i64 0, align 8
@CPU_SUBTYPE_X86_ARCH1 = common dso_local global i64 0, align 8
@MSR_CORE_THREAD_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"cpuid_set_info():\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"  core_count   : %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"  thread_count : %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"       cpu_type: 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"    cpu_subtype: 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpuid_set_info() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* @cpuid_cpu_info, %struct.TYPE_6__** %1, align 8
  %6 = load i64, i64* @TRUE, align 8
  store i64 %6, i64* %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %8 = call i32 @cpuid_set_generic_info(%struct.TYPE_6__* %7)
  %9 = load i32, i32* @CPUID_VID_INTEL, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CPUID_STRING_UNKNOWN, align 4
  %14 = call i64 @strlen(i32 %13)
  %15 = add nsw i64 %14, 1
  %16 = call i32 @min(i64 %15, i32 4)
  %17 = call i64 @strncmp(i32 %9, i32 %12, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %21 = call i64 @cpuid_set_cpufamily(%struct.TYPE_6__* %20)
  %22 = load i64, i64* @CPUFAMILY_UNKNOWN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %0
  %25 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i64, i64* @CPU_TYPE_X86, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = call i64 @PE_parse_boot_argn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %2, i32 8)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %3, align 8
  %34 = call i64 @PE_parse_boot_argn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64* %3, i32 8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* @FALSE, align 8
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %36, %32
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i64, i64* %2, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %39
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CPUID_X86_64_H_FEATURE_SUBSET, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @CPUID_X86_64_H_FEATURE_SUBSET, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %42
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CPUID_X86_64_H_EXTFEATURE_SUBSET, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @CPUID_X86_64_H_EXTFEATURE_SUBSET, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %50
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CPUID_X86_64_H_LEAF7_FEATURE_SUBSET, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @CPUID_X86_64_H_LEAF7_FEATURE_SUBSET, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i64, i64* @CPU_SUBTYPE_X86_64_H, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  br label %74

70:                                               ; preds = %58, %50, %42, %39
  %71 = load i64, i64* @CPU_SUBTYPE_X86_ARCH1, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %66
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 129
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %81 = call i32 @cpuid_set_cache_info(%struct.TYPE_6__* %80)
  br label %82

82:                                               ; preds = %79, %74
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  switch i64 %85, label %110 [
    i64 129, label %86
    i64 128, label %97
  ]

86:                                               ; preds = %82
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 6
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 9
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 8
  store i64 %94, i64* %96, align 8
  br label %127

97:                                               ; preds = %82
  %98 = load i32, i32* @MSR_CORE_THREAD_COUNT, align 4
  %99 = call i32 @rdmsr64(i32 %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i8* @bitfield32(i32 %100, i32 19, i32 16)
  %102 = ptrtoint i8* %101 to i64
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 6
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i8* @bitfield32(i32 %105, i32 15, i32 0)
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 8
  store i64 %107, i64* %109, align 8
  br label %127

110:                                              ; preds = %82
  %111 = load i32, i32* @MSR_CORE_THREAD_COUNT, align 4
  %112 = call i32 @rdmsr64(i32 %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store i32 65537, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %110
  %117 = load i32, i32* %5, align 4
  %118 = call i8* @bitfield32(i32 %117, i32 31, i32 16)
  %119 = ptrtoint i8* %118 to i64
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 6
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i8* @bitfield32(i32 %122, i32 15, i32 0)
  %124 = ptrtoint i8* %123 to i64
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 8
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %116, %97, %86
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %127
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 7
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 6
  store i64 %135, i64* %137, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 9
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 8
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %132, %127
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 129
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %150 = call i32 @cpuid_set_cache_info(%struct.TYPE_6__* %149)
  br label %151

151:                                              ; preds = %148, %143
  %152 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %155)
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 8
  %159 = load i64, i64* %158, align 8
  %160 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %159)
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %163)
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i64 %167)
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 10
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** %170, align 8
  ret void
}

declare dso_local i32 @cpuid_set_generic_info(%struct.TYPE_6__*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @cpuid_set_cpufamily(%struct.TYPE_6__*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @PE_parse_boot_argn(i8*, i64*, i32) #1

declare dso_local i32 @cpuid_set_cache_info(%struct.TYPE_6__*) #1

declare dso_local i32 @rdmsr64(i32) #1

declare dso_local i8* @bitfield32(i32, i32, i32) #1

declare dso_local i32 @DBG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
