; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_load_code_signature.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_load_code_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linkedit_data_command = type { i32, i64, i64 }
%struct.vnode = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.image_params = type { i32 }
%struct.cs_blob = type { i64, i32, i32, i32, i32 }

@LOAD_BADMACHO = common dso_local global i32 0, align 4
@LOAD_SUCCESS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"load_code_signature: revalidation failed: %d\0A\00", align 1
@LOAD_FAILURE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@LOAD_NOSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@LOAD_IOERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"success, but no blob!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linkedit_data_command*, %struct.vnode*, i64, i64, i32, %struct.TYPE_3__*, %struct.image_params*)* @load_code_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_code_signature(%struct.linkedit_data_command* %0, %struct.vnode* %1, i64 %2, i64 %3, i32 %4, %struct.TYPE_3__* %5, %struct.image_params* %6) #0 {
  %8 = alloca %struct.linkedit_data_command*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca %struct.image_params*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.cs_blob*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.linkedit_data_command* %0, %struct.linkedit_data_command** %8, align 8
  store %struct.vnode* %1, %struct.vnode** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %13, align 8
  store %struct.image_params* %6, %struct.image_params** %14, align 8
  store i64 0, i64* %17, align 8
  store %struct.cs_blob* null, %struct.cs_blob** %19, align 8
  %22 = load %struct.linkedit_data_command*, %struct.linkedit_data_command** %8, align 8
  %23 = getelementptr inbounds %struct.linkedit_data_command, %struct.linkedit_data_command* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 24
  br i1 %26, label %37, label %27

27:                                               ; preds = %7
  %28 = load %struct.linkedit_data_command*, %struct.linkedit_data_command** %8, align 8
  %29 = getelementptr inbounds %struct.linkedit_data_command, %struct.linkedit_data_command* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.linkedit_data_command*, %struct.linkedit_data_command** %8, align 8
  %32 = getelementptr inbounds %struct.linkedit_data_command, %struct.linkedit_data_command* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load i64, i64* %11, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27, %7
  %38 = load i32, i32* @LOAD_BADMACHO, align 4
  store i32 %38, i32* %15, align 4
  br label %145

39:                                               ; preds = %27
  %40 = load %struct.vnode*, %struct.vnode** %9, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i64, i64* %10, align 8
  %43 = call %struct.cs_blob* @ubc_cs_blob_get(%struct.vnode* %40, i32 %41, i64 %42)
  store %struct.cs_blob* %43, %struct.cs_blob** %19, align 8
  %44 = load %struct.cs_blob*, %struct.cs_blob** %19, align 8
  %45 = icmp ne %struct.cs_blob* %44, null
  br i1 %45, label %46, label %89

46:                                               ; preds = %39
  %47 = load %struct.cs_blob*, %struct.cs_blob** %19, align 8
  %48 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.cs_blob*, %struct.cs_blob** %19, align 8
  %54 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52, %46
  %59 = load i32, i32* @LOAD_BADMACHO, align 4
  store i32 %59, i32* %15, align 4
  br label %145

60:                                               ; preds = %52
  %61 = load %struct.vnode*, %struct.vnode** %9, align 8
  %62 = call i64 @ubc_cs_generation_check(%struct.vnode* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @LOAD_SUCCESS, align 4
  store i32 %65, i32* %15, align 4
  br label %145

66:                                               ; preds = %60
  %67 = load %struct.vnode*, %struct.vnode** %9, align 8
  %68 = load %struct.cs_blob*, %struct.cs_blob** %19, align 8
  %69 = load %struct.image_params*, %struct.image_params** %14, align 8
  %70 = call i32 @ubc_cs_blob_revalidate(%struct.vnode* %67, %struct.cs_blob* %68, %struct.image_params* %69, i32 0)
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %20, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @LOAD_SUCCESS, align 4
  store i32 %74, i32* %15, align 4
  br label %145

75:                                               ; preds = %66
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* @EAGAIN, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* %20, align 4
  %81 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @LOAD_FAILURE, align 4
  store i32 %82, i32* %15, align 4
  br label %145

83:                                               ; preds = %75
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* @EAGAIN, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  store %struct.cs_blob* null, %struct.cs_blob** %19, align 8
  br label %89

89:                                               ; preds = %83, %39
  %90 = load %struct.linkedit_data_command*, %struct.linkedit_data_command** %8, align 8
  %91 = getelementptr inbounds %struct.linkedit_data_command, %struct.linkedit_data_command* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %21, align 8
  %93 = call i64 @ubc_cs_blob_allocate(i64* %17, i64* %21)
  store i64 %93, i64* %16, align 8
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* @KERN_SUCCESS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* @LOAD_NOSPACE, align 4
  store i32 %98, i32* %15, align 4
  br label %145

99:                                               ; preds = %89
  store i32 0, i32* %18, align 4
  %100 = load i32, i32* @UIO_READ, align 4
  %101 = load %struct.vnode*, %struct.vnode** %9, align 8
  %102 = load i64, i64* %17, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.linkedit_data_command*, %struct.linkedit_data_command** %8, align 8
  %105 = getelementptr inbounds %struct.linkedit_data_command, %struct.linkedit_data_command* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load %struct.linkedit_data_command*, %struct.linkedit_data_command** %8, align 8
  %109 = getelementptr inbounds %struct.linkedit_data_command, %struct.linkedit_data_command* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = load i32, i32* @UIO_SYSSPACE, align 4
  %113 = call i32 (...) @kauth_cred_get()
  %114 = call i32 (...) @current_proc()
  %115 = call i32 @vn_rdwr(i32 %100, %struct.vnode* %101, i32 %103, i64 %106, i64 %111, i32 %112, i32 0, i32 %113, i32* %18, i32 %114)
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %20, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %99
  %119 = load i32, i32* %18, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118, %99
  %122 = load i32, i32* @LOAD_IOERROR, align 4
  store i32 %122, i32* %15, align 4
  br label %145

123:                                              ; preds = %118
  %124 = load %struct.vnode*, %struct.vnode** %9, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i64, i64* %10, align 8
  %127 = load %struct.linkedit_data_command*, %struct.linkedit_data_command** %8, align 8
  %128 = getelementptr inbounds %struct.linkedit_data_command, %struct.linkedit_data_command* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.image_params*, %struct.image_params** %14, align 8
  %131 = call i64 @ubc_cs_blob_add(%struct.vnode* %124, i32 %125, i64 %126, i64* %17, i64 %129, %struct.image_params* %130, i32 0, %struct.cs_blob** %19)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %123
  %134 = load i64, i64* %17, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i64, i64* %17, align 8
  %138 = load i64, i64* %21, align 8
  %139 = call i32 @ubc_cs_blob_deallocate(i64 %137, i64 %138)
  br label %140

140:                                              ; preds = %136, %133
  %141 = load i32, i32* @LOAD_FAILURE, align 4
  store i32 %141, i32* %15, align 4
  br label %145

142:                                              ; preds = %123
  store i64 0, i64* %17, align 8
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* @LOAD_SUCCESS, align 4
  store i32 %144, i32* %15, align 4
  br label %145

145:                                              ; preds = %143, %140, %121, %97, %79, %73, %64, %58, %37
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* @LOAD_SUCCESS, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %172

149:                                              ; preds = %145
  %150 = load %struct.cs_blob*, %struct.cs_blob** %19, align 8
  %151 = icmp eq %struct.cs_blob* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %149
  %155 = load %struct.cs_blob*, %struct.cs_blob** %19, align 8
  %156 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load %struct.cs_blob*, %struct.cs_blob** %19, align 8
  %163 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.cs_blob*, %struct.cs_blob** %19, align 8
  %168 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %154, %145
  %173 = load i64, i64* %17, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i64, i64* %17, align 8
  %177 = load i64, i64* %21, align 8
  %178 = call i32 @ubc_cs_blob_deallocate(i64 %176, i64 %177)
  store i64 0, i64* %17, align 8
  br label %179

179:                                              ; preds = %175, %172
  %180 = load i32, i32* %15, align 4
  ret i32 %180
}

declare dso_local %struct.cs_blob* @ubc_cs_blob_get(%struct.vnode*, i32, i64) #1

declare dso_local i64 @ubc_cs_generation_check(%struct.vnode*) #1

declare dso_local i32 @ubc_cs_blob_revalidate(%struct.vnode*, %struct.cs_blob*, %struct.image_params*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ubc_cs_blob_allocate(i64*, i64*) #1

declare dso_local i32 @vn_rdwr(i32, %struct.vnode*, i32, i64, i64, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i64 @ubc_cs_blob_add(%struct.vnode*, i32, i64, i64*, i64, %struct.image_params*, i32, %struct.cs_blob**) #1

declare dso_local i32 @ubc_cs_blob_deallocate(i64, i64) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
