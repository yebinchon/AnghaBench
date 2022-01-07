; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_internalize_user_msghdr_array.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_internalize_user_msghdr_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_msghdr_x = type { i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.uio = type { i32 }
%struct.user_iovec = type { i32 }
%struct.user64_msghdr_x = type { i64, i32, i32, i64, i64, i32, i64, i64 }
%struct.user32_msghdr_x = type { i64, i32, i32, i64, i64, i32, i64, i64 }

@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_MAXIOV = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @internalize_user_msghdr_array(i8* %0, i32 %1, i32 %2, i64 %3, %struct.user_msghdr_x* %4, %struct.uio** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.user_msghdr_x*, align 8
  %12 = alloca %struct.uio**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.uio*, align 8
  %18 = alloca %struct.user_iovec*, align 8
  %19 = alloca %struct.user_msghdr_x*, align 8
  %20 = alloca %struct.user64_msghdr_x*, align 8
  %21 = alloca %struct.user32_msghdr_x*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.user_msghdr_x* %4, %struct.user_msghdr_x** %11, align 8
  store %struct.uio** %5, %struct.uio*** %12, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %14, align 8
  br label %22

22:                                               ; preds = %212, %6
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %215

26:                                               ; preds = %22
  %27 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %11, align 8
  %28 = load i64, i64* %14, align 8
  %29 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %27, i64 %28
  store %struct.user_msghdr_x* %29, %struct.user_msghdr_x** %19, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @UIO_USERSPACE64, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %26
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to %struct.user64_msghdr_x*
  %36 = load i64, i64* %14, align 8
  %37 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %35, i64 %36
  store %struct.user64_msghdr_x* %37, %struct.user64_msghdr_x** %20, align 8
  %38 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %20, align 8
  %39 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %42 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %41, i32 0, i32 4
  store i64 %40, i64* %42, align 8
  %43 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %20, align 8
  %44 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %47 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %20, align 8
  %49 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %52 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %20, align 8
  %54 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %57 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %20, align 8
  %59 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %62 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %20, align 8
  %64 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %67 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %20, align 8
  %69 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %72 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  %73 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %20, align 8
  %74 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %77 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  br label %123

78:                                               ; preds = %26
  %79 = load i8*, i8** %7, align 8
  %80 = bitcast i8* %79 to %struct.user32_msghdr_x*
  %81 = load i64, i64* %14, align 8
  %82 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %80, i64 %81
  store %struct.user32_msghdr_x* %82, %struct.user32_msghdr_x** %21, align 8
  %83 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %21, align 8
  %84 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %83, i32 0, i32 7
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %87 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %86, i32 0, i32 4
  store i64 %85, i64* %87, align 8
  %88 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %21, align 8
  %89 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %92 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %91, i32 0, i32 3
  store i64 %90, i64* %92, align 8
  %93 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %21, align 8
  %94 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %97 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 4
  %98 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %21, align 8
  %99 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %102 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %21, align 8
  %104 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %107 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %21, align 8
  %109 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %112 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %21, align 8
  %114 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %117 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 8
  %118 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %21, align 8
  %119 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %122 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %78, %33
  %124 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %125 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp sle i64 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %123
  %129 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %130 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @UIO_MAXIOV, align 8
  %133 = icmp sgt i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %128, %123
  %135 = load i32, i32* @EMSGSIZE, align 4
  store i32 %135, i32* %13, align 4
  br label %216

136:                                              ; preds = %128
  %137 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %138 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call %struct.uio* @uio_create(i64 %139, i32 0, i32 %140, i32 %141)
  store %struct.uio* %142, %struct.uio** %17, align 8
  %143 = load %struct.uio*, %struct.uio** %17, align 8
  %144 = icmp eq %struct.uio* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %136
  %146 = load i32, i32* @ENOMEM, align 4
  store i32 %146, i32* %13, align 4
  br label %216

147:                                              ; preds = %136
  %148 = load %struct.uio*, %struct.uio** %17, align 8
  %149 = load %struct.uio**, %struct.uio*** %12, align 8
  %150 = load i64, i64* %14, align 8
  %151 = getelementptr inbounds %struct.uio*, %struct.uio** %149, i64 %150
  store %struct.uio* %148, %struct.uio** %151, align 8
  %152 = load %struct.uio*, %struct.uio** %17, align 8
  %153 = call %struct.user_iovec* @uio_iovsaddr(%struct.uio* %152)
  store %struct.user_iovec* %153, %struct.user_iovec** %18, align 8
  %154 = load %struct.user_iovec*, %struct.user_iovec** %18, align 8
  %155 = icmp eq %struct.user_iovec* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %147
  %157 = load i32, i32* @ENOMEM, align 4
  store i32 %157, i32* %13, align 4
  br label %216

158:                                              ; preds = %147
  %159 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %160 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %164 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.user_iovec*, %struct.user_iovec** %18, align 8
  %167 = call i32 @copyin_user_iovec_array(i32 %161, i32 %162, i64 %165, %struct.user_iovec* %166)
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %158
  br label %216

171:                                              ; preds = %158
  %172 = load %struct.user_iovec*, %struct.user_iovec** %18, align 8
  %173 = call i32 @CAST_USER_ADDR_T(%struct.user_iovec* %172)
  %174 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %175 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %174, i32 0, i32 6
  store i32 %173, i32* %175, align 4
  %176 = load %struct.uio*, %struct.uio** %17, align 8
  %177 = call i32 @uio_calculateresid(%struct.uio* %176)
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %171
  br label %216

181:                                              ; preds = %171
  %182 = load %struct.uio*, %struct.uio** %17, align 8
  %183 = call i32 @uio_resid(%struct.uio* %182)
  %184 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %185 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 8
  %186 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %187 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %181
  %191 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %192 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load i64, i64* %15, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %15, align 8
  br label %198

198:                                              ; preds = %195, %190, %181
  %199 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %200 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %198
  %204 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %19, align 8
  %205 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i64, i64* %16, align 8
  %210 = add nsw i64 %209, 1
  store i64 %210, i64* %16, align 8
  br label %211

211:                                              ; preds = %208, %203, %198
  br label %212

212:                                              ; preds = %211
  %213 = load i64, i64* %14, align 8
  %214 = add nsw i64 %213, 1
  store i64 %214, i64* %14, align 8
  br label %22

215:                                              ; preds = %22
  br label %216

216:                                              ; preds = %215, %180, %170, %156, %145, %134
  %217 = load i32, i32* %13, align 4
  ret i32 %217
}

declare dso_local %struct.uio* @uio_create(i64, i32, i32, i32) #1

declare dso_local %struct.user_iovec* @uio_iovsaddr(%struct.uio*) #1

declare dso_local i32 @copyin_user_iovec_array(i32, i32, i64, %struct.user_iovec*) #1

declare dso_local i32 @CAST_USER_ADDR_T(%struct.user_iovec*) #1

declare dso_local i32 @uio_calculateresid(%struct.uio*) #1

declare dso_local i32 @uio_resid(%struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
