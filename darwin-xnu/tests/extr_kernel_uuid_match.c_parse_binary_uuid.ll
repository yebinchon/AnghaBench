; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kernel_uuid_match.c_parse_binary_uuid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kernel_uuid_match.c_parse_binary_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.load_command = type { i64, i64 }
%struct.mach_header = type { i64, i32 }
%struct.mach_header_64 = type { i64, i32 }
%struct.uuid_command = type { i32 }

@MH_MAGIC = common dso_local global i64 0, align 8
@MH_CIGAM = common dso_local global i64 0, align 8
@MH_MAGIC_64 = common dso_local global i64 0, align 8
@MH_CIGAM_64 = common dso_local global i64 0, align 8
@LC_UUID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Trying test UUID %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @parse_binary_uuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_binary_uuid(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.load_command*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mach_header*, align 8
  %12 = alloca %struct.mach_header*, align 8
  %13 = alloca %struct.mach_header_64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.uuid_command*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.load_command* null, %struct.load_command** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call %struct.mach_header* @open_file(i8* %19, i64* %6)
  store %struct.mach_header* %20, %struct.mach_header** %11, align 8
  %21 = load %struct.mach_header*, %struct.mach_header** %11, align 8
  %22 = icmp ne %struct.mach_header* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %138

24:                                               ; preds = %2
  %25 = load %struct.mach_header*, %struct.mach_header** %11, align 8
  %26 = getelementptr inbounds %struct.mach_header, %struct.mach_header* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MH_MAGIC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.mach_header*, %struct.mach_header** %11, align 8
  %32 = getelementptr inbounds %struct.mach_header, %struct.mach_header* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MH_CIGAM, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %30, %24
  %37 = load %struct.mach_header*, %struct.mach_header** %11, align 8
  store %struct.mach_header* %37, %struct.mach_header** %12, align 8
  %38 = load %struct.mach_header*, %struct.mach_header** %12, align 8
  %39 = getelementptr inbounds %struct.mach_header, %struct.mach_header* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MH_CIGAM, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.mach_header*, %struct.mach_header** %12, align 8
  %45 = call i32 @__swap_mach_header(%struct.mach_header* %44)
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.mach_header*, %struct.mach_header** %12, align 8
  %48 = getelementptr inbounds %struct.mach_header, %struct.mach_header* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %8, align 4
  %50 = load %struct.mach_header*, %struct.mach_header** %12, align 8
  %51 = getelementptr inbounds %struct.mach_header, %struct.mach_header* %50, i64 1
  %52 = bitcast %struct.mach_header* %51 to %struct.load_command*
  store %struct.load_command* %52, %struct.load_command** %9, align 8
  br label %88

53:                                               ; preds = %30
  %54 = load %struct.mach_header*, %struct.mach_header** %11, align 8
  %55 = getelementptr inbounds %struct.mach_header, %struct.mach_header* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MH_MAGIC_64, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.mach_header*, %struct.mach_header** %11, align 8
  %61 = getelementptr inbounds %struct.mach_header, %struct.mach_header* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MH_CIGAM_64, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %59, %53
  %66 = load %struct.mach_header*, %struct.mach_header** %11, align 8
  %67 = bitcast %struct.mach_header* %66 to %struct.mach_header_64*
  store %struct.mach_header_64* %67, %struct.mach_header_64** %13, align 8
  %68 = load %struct.mach_header_64*, %struct.mach_header_64** %13, align 8
  %69 = getelementptr inbounds %struct.mach_header_64, %struct.mach_header_64* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MH_CIGAM_64, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load %struct.mach_header_64*, %struct.mach_header_64** %13, align 8
  %75 = call i32 @__swap_mach_header_64(%struct.mach_header_64* %74)
  store i32 1, i32* %7, align 4
  br label %76

76:                                               ; preds = %73, %65
  %77 = load %struct.mach_header_64*, %struct.mach_header_64** %13, align 8
  %78 = getelementptr inbounds %struct.mach_header_64, %struct.mach_header_64* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %8, align 4
  %80 = load %struct.mach_header_64*, %struct.mach_header_64** %13, align 8
  %81 = getelementptr inbounds %struct.mach_header_64, %struct.mach_header_64* %80, i64 1
  %82 = bitcast %struct.mach_header_64* %81 to %struct.load_command*
  store %struct.load_command* %82, %struct.load_command** %9, align 8
  br label %87

83:                                               ; preds = %59
  %84 = load %struct.mach_header*, %struct.mach_header** %11, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @munmap(%struct.mach_header* %84, i64 %85)
  store i32 0, i32* %3, align 4
  br label %138

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %46
  store i32 0, i32* %14, align 4
  br label %89

89:                                               ; preds = %130, %88
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %133

93:                                               ; preds = %89
  %94 = load %struct.load_command*, %struct.load_command** %9, align 8
  %95 = getelementptr inbounds %struct.load_command, %struct.load_command* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %15, align 8
  %97 = load %struct.load_command*, %struct.load_command** %9, align 8
  %98 = getelementptr inbounds %struct.load_command, %struct.load_command* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %16, align 8
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %93
  %103 = load i64, i64* %15, align 8
  %104 = call i32 @SWAP32(i64 %103)
  %105 = load i64, i64* %16, align 8
  %106 = call i32 @SWAP32(i64 %105)
  br label %107

107:                                              ; preds = %102, %93
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* @LC_UUID, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %107
  %112 = load %struct.load_command*, %struct.load_command** %9, align 8
  %113 = bitcast %struct.load_command* %112 to %struct.uuid_command*
  store %struct.uuid_command* %113, %struct.uuid_command** %17, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.uuid_command*, %struct.uuid_command** %17, align 8
  %116 = getelementptr inbounds %struct.uuid_command, %struct.uuid_command* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @uuid_copy(i32 %114, i32 %117)
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %18, align 4
  %121 = call i32 @uuid_unparse(i32 %119, i32 %120)
  %122 = load i32, i32* %18, align 4
  %123 = call i32 @T_LOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %122)
  store i32 1, i32* %10, align 4
  br label %133

124:                                              ; preds = %107
  %125 = load %struct.load_command*, %struct.load_command** %9, align 8
  %126 = ptrtoint %struct.load_command* %125 to i64
  %127 = load i64, i64* %16, align 8
  %128 = add i64 %126, %127
  %129 = inttoptr i64 %128 to %struct.load_command*
  store %struct.load_command* %129, %struct.load_command** %9, align 8
  br label %130

130:                                              ; preds = %124
  %131 = load i32, i32* %14, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %89

133:                                              ; preds = %111, %89
  %134 = load %struct.mach_header*, %struct.mach_header** %11, align 8
  %135 = load i64, i64* %6, align 8
  %136 = call i32 @munmap(%struct.mach_header* %134, i64 %135)
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %133, %83, %23
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.mach_header* @open_file(i8*, i64*) #1

declare dso_local i32 @__swap_mach_header(%struct.mach_header*) #1

declare dso_local i32 @__swap_mach_header_64(%struct.mach_header_64*) #1

declare dso_local i32 @munmap(%struct.mach_header*, i64) #1

declare dso_local i32 @SWAP32(i64) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

declare dso_local i32 @uuid_unparse(i32, i32) #1

declare dso_local i32 @T_LOG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
