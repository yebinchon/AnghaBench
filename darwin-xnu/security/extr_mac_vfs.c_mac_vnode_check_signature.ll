; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_check_signature.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_check_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.vnode = type { i32 }
%struct.cs_blob = type { i32 }
%struct.image_params = type { %struct.TYPE_5__*, i32 }

@MAXPATHLEN = common dso_local global i64 0, align 8
@CPU_TYPE_ANY = common dso_local global i32 0, align 4
@vnode_check_signature = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"(get vnode path failed)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"(path alloc failed)\00", align 1
@.str.2 = private unnamed_addr constant [155 x i8] c"mac_vnode_check_signature: MAC hook returned no error, but status is claimed to be fatal? path: '%s', fatal_failure_desc_len: %ld, fatal_failure_desc:\0A%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"mac_vnode_check_signature: %s: code signature validation failed fatally: %s\00", align 1
@OS_REASON_CODESIGNING = common dso_local global i32 0, align 4
@CODESIGNING_EXIT_REASON_TASKGATED_INVALID_SIG = common dso_local global i32 0, align 4
@OS_REASON_NULL = common dso_local global %struct.TYPE_5__* null, align 8
@.str.4 = private unnamed_addr constant [91 x i8] c"mac_vnode_check_signature: %s: failure to allocate exit reason for validation failure: %s\0A\00", align 1
@OS_REASON_FLAG_GENERATE_CRASH_REPORT = common dso_local global i32 0, align 4
@OS_REASON_FLAG_CONSISTENT_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [74 x i8] c"mac_vnode_check_signature: %s: fatal failure is missing its description.\0A\00", align 1
@EXIT_REASON_USER_DESC = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [100 x i8] c"mac_vnode_check_signature: %s: failed to copy reason string (kcdata_memcpy error: %d, length: %ld)\0A\00", align 1
@.str.7 = private unnamed_addr constant [141 x i8] c"mac_vnode_check_signature: %s: failed to allocate space for reason string (os_reason_alloc_buffer error: %d, kcdata error: %d, length: %ld)\0A\00", align 1
@mac_proc_enforce = common dso_local global i32 0, align 4
@mac_vnode_enforce = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vnode_check_signature(%struct.vnode* %0, %struct.cs_blob* %1, %struct.image_params* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.cs_blob*, align 8
  %9 = alloca %struct.image_params*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_5__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store %struct.cs_blob* %1, %struct.cs_blob** %8, align 8
  store %struct.image_params* %2, %struct.image_params** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i8* null, i8** %14, align 8
  store i64 0, i64* %15, align 8
  store i8* null, i8** %16, align 8
  %25 = load i64, i64* @MAXPATHLEN, align 8
  store i64 %25, i64* %17, align 8
  %26 = load %struct.image_params*, %struct.image_params** %9, align 8
  %27 = icmp eq %struct.image_params* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* @CPU_TYPE_ANY, align 4
  br label %34

30:                                               ; preds = %6
  %31 = load %struct.image_params*, %struct.image_params** %9, align 8
  %32 = getelementptr inbounds %struct.image_params, %struct.image_params* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  br label %34

34:                                               ; preds = %30, %28
  %35 = phi i32 [ %29, %28 ], [ %33, %30 ]
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* @vnode_check_signature, align 4
  %37 = load %struct.vnode*, %struct.vnode** %7, align 8
  %38 = load %struct.vnode*, %struct.vnode** %7, align 8
  %39 = getelementptr inbounds %struct.vnode, %struct.vnode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @MAC_CHECK(i32 %36, %struct.vnode* %37, i32 %40, i32 %41, %struct.cs_blob* %42, i32* %43, i32* %44, i32 %45, i8** %14, i64* %15)
  %47 = load i64, i64* %15, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %144

49:                                               ; preds = %34
  store i8* null, i8** %19, align 8
  %50 = load i64, i64* @MAXPATHLEN, align 8
  %51 = call i64 @kalloc(i64 %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %16, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.vnode*, %struct.vnode** %7, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = bitcast i64* %17 to i32*
  %59 = call i64 @vn_getpath(%struct.vnode* %56, i8* %57, i32* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i8*, i8** %16, align 8
  store i8* %62, i8** %19, align 8
  br label %64

63:                                               ; preds = %55
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  br label %64

64:                                               ; preds = %63, %61
  br label %66

65:                                               ; preds = %49
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  br label %66

66:                                               ; preds = %65, %64
  %67 = load i32, i32* %13, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i8*, i8** %19, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = call i32 @panic(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.2, i64 0, i64 0), i8* %70, i64 %71, i8* %72)
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i8*, i8** %19, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i8* %75, i8* %76)
  %78 = load %struct.image_params*, %struct.image_params** %9, align 8
  %79 = icmp eq %struct.image_params* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %145

81:                                               ; preds = %74
  %82 = load i32, i32* @OS_REASON_CODESIGNING, align 4
  %83 = load i32, i32* @CODESIGNING_EXIT_REASON_TASKGATED_INVALID_SIG, align 4
  %84 = call %struct.TYPE_5__* @os_reason_create(i32 %82, i32 %83)
  store %struct.TYPE_5__* %84, %struct.TYPE_5__** %20, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @OS_REASON_NULL, align 8
  %87 = icmp eq %struct.TYPE_5__* %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i8*, i8** %19, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.4, i64 0, i64 0), i8* %89, i8* %90)
  br label %145

92:                                               ; preds = %81
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %94 = load %struct.image_params*, %struct.image_params** %9, align 8
  %95 = getelementptr inbounds %struct.image_params, %struct.image_params* %94, i32 0, i32 0
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** %95, align 8
  %96 = load i32, i32* @OS_REASON_FLAG_GENERATE_CRASH_REPORT, align 4
  %97 = load i32, i32* @OS_REASON_FLAG_CONSISTENT_FAILURE, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load i8*, i8** %14, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = load i8*, i8** %19, align 8
  %105 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i8* %104)
  br label %143

106:                                              ; preds = %92
  store i64 0, i64* %21, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %108 = load i64, i64* %15, align 8
  %109 = call i32 @kcdata_estimate_required_buffer_size(i32 1, i64 %108)
  %110 = call i32 @os_reason_alloc_buffer_noblock(%struct.TYPE_5__* %107, i32 %109)
  store i32 %110, i32* %22, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %106
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* @EXIT_REASON_USER_DESC, align 4
  %116 = load i64, i64* %15, align 8
  %117 = call i32 @kcdata_get_memory_addr(i32* %114, i32 %115, i64 %116, i64* %21)
  store i32 %117, i32* %23, align 4
  %118 = load i32, i32* @KERN_SUCCESS, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %112
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i64, i64* %21, align 8
  %124 = load i8*, i8** %14, align 8
  %125 = load i64, i64* %15, align 8
  %126 = call i32 @kcdata_memcpy(i32* %122, i64 %123, i8* %124, i64 %125)
  store i32 %126, i32* %24, align 4
  %127 = load i32, i32* %24, align 4
  %128 = load i32, i32* @KERN_SUCCESS, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %120
  %131 = load i8*, i8** %19, align 8
  %132 = load i32, i32* %24, align 4
  %133 = load i64, i64* %15, align 8
  %134 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.6, i64 0, i64 0), i8* %131, i32 %132, i64 %133)
  br label %135

135:                                              ; preds = %130, %120
  br label %142

136:                                              ; preds = %112, %106
  %137 = load i8*, i8** %19, align 8
  %138 = load i32, i32* %22, align 4
  %139 = load i32, i32* %23, align 4
  %140 = load i64, i64* %15, align 8
  %141 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.7, i64 0, i64 0), i8* %137, i32 %138, i32 %139, i64 %140)
  br label %142

142:                                              ; preds = %136, %135
  br label %143

143:                                              ; preds = %142, %103
  br label %144

144:                                              ; preds = %143, %34
  br label %145

145:                                              ; preds = %144, %88, %80
  %146 = load i8*, i8** %16, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load i8*, i8** %16, align 8
  %150 = load i64, i64* @MAXPATHLEN, align 8
  %151 = call i32 @kfree(i8* %149, i64 %150)
  br label %152

152:                                              ; preds = %148, %145
  %153 = load i64, i64* %15, align 8
  %154 = icmp ugt i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = load i8*, i8** %14, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i8*, i8** %14, align 8
  %160 = load i64, i64* %15, align 8
  %161 = call i32 @kfree(i8* %159, i64 %160)
  br label %162

162:                                              ; preds = %158, %155, %152
  %163 = load i32, i32* %13, align 4
  ret i32 %163
}

declare dso_local i32 @MAC_CHECK(i32, %struct.vnode*, i32, i32, %struct.cs_blob*, i32*, i32*, i32, i8**, i64*) #1

declare dso_local i64 @kalloc(i64) #1

declare dso_local i64 @vn_getpath(%struct.vnode*, i8*, i32*) #1

declare dso_local i32 @panic(i8*, i8*, i64, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_5__* @os_reason_create(i32, i32) #1

declare dso_local i32 @os_reason_alloc_buffer_noblock(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @kcdata_estimate_required_buffer_size(i32, i64) #1

declare dso_local i32 @kcdata_get_memory_addr(i32*, i32, i64, i64*) #1

declare dso_local i32 @kcdata_memcpy(i32*, i64, i8*, i64) #1

declare dso_local i32 @kfree(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
