; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqlookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqlookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotafile = type { i32, i32, i32, i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.dqblk = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.vfs_context = type { i32, i32 }

@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"dqlookup: error %d looking up id %u at index %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"dqlookup: error looking up id %u at index %d\0A\00", align 1
@UIO_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.quotafile*, i32, %struct.dqblk*, i32*)* @dqlookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dqlookup(%struct.quotafile* %0, i32 %1, %struct.dqblk* %2, i32* %3) #0 {
  %5 = alloca %struct.quotafile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dqblk*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.vfs_context, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.quotafile* %0, %struct.quotafile** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dqblk* %2, %struct.dqblk** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %16, align 4
  %19 = call i32 @UIO_SIZEOF(i32 1)
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %17, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %18, align 8
  %23 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %24 = call i32 @qf_lock(%struct.quotafile* %23)
  %25 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %26 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %25, i32 0, i32 4
  %27 = load %struct.vnode*, %struct.vnode** %26, align 8
  store %struct.vnode* %27, %struct.vnode** %9, align 8
  %28 = call i32 (...) @current_thread()
  %29 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %10, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %31 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %10, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %35 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %40 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @dqhash1(i32 %38, i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @dqhash2(i32 %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %49 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %13, align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %47, %53
  %55 = load i32, i32* %15, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %201, %4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %207

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @dqoffset(i32 %62)
  %64 = load i32, i32* @UIO_SYSSPACE, align 4
  %65 = load i32, i32* @UIO_READ, align 4
  %66 = getelementptr inbounds i8, i8* %22, i64 0
  %67 = trunc i64 %20 to i32
  %68 = call i32 @uio_createwithbuffer(i32 1, i32 %63, i32 %64, i32 %65, i8* %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %71 = call i32 @CAST_USER_ADDR_T(%struct.dqblk* %70)
  %72 = call i32 @uio_addiov(i32 %69, i32 %71, i32 48)
  %73 = load %struct.vnode*, %struct.vnode** %9, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @VNOP_READ(%struct.vnode* %73, i32 %74, i32 0, %struct.vfs_context* %10)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %61
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80, i32 %81)
  br label %207

83:                                               ; preds = %61
  %84 = load i32, i32* %11, align 4
  %85 = call i64 @uio_resid(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32, i32* @EIO, align 4
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90)
  br label %207

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %95 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %138

98:                                               ; preds = %93
  %99 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %100 = call i32 @bzero(%struct.dqblk* %99, i32 48)
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @OSSwapHostToBigInt32(i32 %101)
  %103 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %104 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @dqoffset(i32 %106)
  %108 = load i32, i32* @UIO_SYSSPACE, align 4
  %109 = load i32, i32* @UIO_WRITE, align 4
  %110 = call i32 @uio_reset(i32 %105, i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %113 = call i32 @CAST_USER_ADDR_T(%struct.dqblk* %112)
  %114 = call i32 @uio_addiov(i32 %111, i32 %113, i32 48)
  %115 = load %struct.vnode*, %struct.vnode** %9, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @VNOP_WRITE(%struct.vnode* %115, i32 %116, i32 0, %struct.vfs_context* %10)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i64 @uio_resid(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %98
  %122 = load i32, i32* %16, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* @EIO, align 4
  store i32 %125, i32* %16, align 4
  br label %126

126:                                              ; preds = %124, %121, %98
  %127 = load i32, i32* %16, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %131 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %129, %126
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %137 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  br label %207

138:                                              ; preds = %93
  %139 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %140 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @OSSwapBigToHostInt32(i32 %141)
  %143 = load i32, i32* %6, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %200

145:                                              ; preds = %138
  %146 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %147 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %146, i32 0, i32 8
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @OSSwapBigToHostInt64(i8* %148)
  %150 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %151 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %150, i32 0, i32 8
  store i8* %149, i8** %151, align 8
  %152 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %153 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %152, i32 0, i32 7
  %154 = load i8*, i8** %153, align 8
  %155 = call i8* @OSSwapBigToHostInt64(i8* %154)
  %156 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %157 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %156, i32 0, i32 7
  store i8* %155, i8** %157, align 8
  %158 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %159 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %158, i32 0, i32 6
  %160 = load i8*, i8** %159, align 8
  %161 = call i8* @OSSwapBigToHostInt64(i8* %160)
  %162 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %163 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %162, i32 0, i32 6
  store i8* %161, i8** %163, align 8
  %164 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %165 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @OSSwapBigToHostInt32(i32 %166)
  %168 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %169 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %171 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @OSSwapBigToHostInt32(i32 %172)
  %174 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %175 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  %176 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %177 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @OSSwapBigToHostInt32(i32 %178)
  %180 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %181 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  %182 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %183 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @OSSwapBigToHostInt32(i32 %184)
  %186 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %187 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  %188 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %189 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @OSSwapBigToHostInt32(i32 %190)
  %192 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %193 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 4
  %194 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %195 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @OSSwapBigToHostInt32(i32 %196)
  %198 = load %struct.dqblk*, %struct.dqblk** %7, align 8
  %199 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  br label %207

200:                                              ; preds = %138
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %13, align 4
  %204 = add nsw i32 %202, %203
  %205 = load i32, i32* %15, align 4
  %206 = and i32 %204, %205
  store i32 %206, i32* %12, align 4
  br label %57

207:                                              ; preds = %145, %134, %87, %78, %57
  %208 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %209 = call i32 @qf_unlock(%struct.quotafile* %208)
  %210 = load i32, i32* %12, align 4
  %211 = load i32*, i32** %8, align 8
  store i32 %210, i32* %211, align 4
  %212 = load i32, i32* %16, align 4
  %213 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %213)
  ret i32 %212
}

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @qf_lock(%struct.quotafile*) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @dqhash1(i32, i32, i32) #1

declare dso_local i32 @dqhash2(i32, i32) #1

declare dso_local i32 @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dqoffset(i32) #1

declare dso_local i32 @uio_addiov(i32, i32, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(%struct.dqblk*) #1

declare dso_local i32 @VNOP_READ(%struct.vnode*, i32, i32, %struct.vfs_context*) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

declare dso_local i64 @uio_resid(i32) #1

declare dso_local i32 @bzero(%struct.dqblk*, i32) #1

declare dso_local i32 @OSSwapHostToBigInt32(i32) #1

declare dso_local i32 @uio_reset(i32, i32, i32, i32) #1

declare dso_local i32 @VNOP_WRITE(%struct.vnode*, i32, i32, %struct.vfs_context*) #1

declare dso_local i32 @OSSwapBigToHostInt32(i32) #1

declare dso_local i8* @OSSwapBigToHostInt64(i8*) #1

declare dso_local i32 @qf_unlock(%struct.quotafile*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
