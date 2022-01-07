; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_refill_fd_direntries.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_refill_fd_direntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_vn_data = type { i32, i64, i64, i32*, i64, i32, i32, i64 }

@M_FD_DIRBUF = common dso_local global i32 0, align 4
@FV_DIRBUF_START_SIZ = common dso_local global i64 0, align 8
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@VNODE_READDIR_EXTENDED = common dso_local global i32 0, align 4
@FV_DIRBUF_MAX_SIZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.fd_vn_data*, i32*)* @refill_fd_direntries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refill_fd_direntries(i32 %0, i32 %1, %struct.fd_vn_data* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fd_vn_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.fd_vn_data* %2, %struct.fd_vn_data** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = call i32 @UIO_SIZEOF(i32 1)
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %24 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %4
  %28 = load i32*, i32** %9, align 8
  store i32 1, i32* %28, align 4
  %29 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %30 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %35 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @M_FD_DIRBUF, align 4
  %38 = call i32 @FREE(i32* %36, i32 %37)
  %39 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %40 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %33, %27
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %203

42:                                               ; preds = %4
  store i32 0, i32* %17, align 4
  %43 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %44 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %49 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %54 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %13, align 8
  br label %58

56:                                               ; preds = %47, %42
  %57 = load i64, i64* @FV_DIRBUF_START_SIZ, align 8
  store i64 %57, i64* %13, align 8
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32*, i32** %9, align 8
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* @UIO_SYSSPACE, align 4
  %61 = load i32, i32* @UIO_READ, align 4
  %62 = getelementptr inbounds i8, i8* %22, i64 0
  %63 = trunc i64 %20 to i32
  %64 = call i32 @uio_createwithbuffer(i32 1, i32 0, i32 %60, i32 %61, i8* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %151, %58
  %66 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %67 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %81, label %70

70:                                               ; preds = %65
  %71 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %72 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @caddr_t, align 4
  %75 = load i64, i64* %13, align 8
  %76 = load i32, i32* @M_FD_DIRBUF, align 4
  %77 = load i32, i32* @M_WAITOK, align 4
  %78 = call i32 @MALLOC(i32* %73, i32 %74, i64 %75, i32 %76, i32 %77)
  %79 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %80 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %70, %65
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %84 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @UIO_SYSSPACE, align 4
  %87 = load i32, i32* @UIO_READ, align 4
  %88 = call i32 @uio_reset(i32 %82, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %91 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @CAST_USER_ADDR_T(i32* %92)
  %94 = load i64, i64* %13, align 8
  %95 = call i32 @uio_addiov(i32 %89, i32 %93, i64 %94)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @VNODE_READDIR_EXTENDED, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @vnode_readdir64(i32 %96, i32 %97, i32 %98, i32* %15, i32* %16, i32 %99)
  store i32 %100, i32* %17, align 4
  %101 = load i64, i64* %13, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i64 @uio_resid(i32 %102)
  %104 = sub i64 %101, %103
  store i64 %104, i64* %14, align 8
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %144, label %107

107:                                              ; preds = %81
  %108 = load i64, i64* %14, align 8
  %109 = icmp ugt i64 %108, 0
  br i1 %109, label %110, label %144

110:                                              ; preds = %107
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %13, align 8
  %113 = icmp ule i64 %111, %112
  br i1 %113, label %114, label %144

114:                                              ; preds = %110
  %115 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %116 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %119 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @uio_offset(i32 %120)
  %122 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %123 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %15, align 4
  %125 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %126 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  store i32 0, i32* %15, align 4
  %127 = load i64, i64* %14, align 8
  %128 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %129 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %128, i32 0, i32 2
  store i64 %127, i64* %129, align 8
  %130 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %131 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %130, i32 0, i32 4
  store i64 0, i64* %131, align 8
  %132 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %133 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* %14, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i64, i64* %13, align 8
  %138 = load i64, i64* %14, align 8
  %139 = sub i64 %137, %138
  %140 = call i32 @bzero(i32* %136, i64 %139)
  %141 = load i64, i64* %13, align 8
  %142 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %143 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  br label %171

144:                                              ; preds = %110, %107, %81
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %163, label %147

147:                                              ; preds = %144
  %148 = load i64, i64* %13, align 8
  %149 = load i64, i64* @FV_DIRBUF_MAX_SIZ, align 8
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %147
  %152 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %153 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* @M_FD_DIRBUF, align 4
  %156 = call i32 @FREE(i32* %154, i32 %155)
  %157 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %158 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %157, i32 0, i32 3
  store i32* null, i32** %158, align 8
  %159 = load i64, i64* %13, align 8
  %160 = mul i64 2, %159
  store i64 %160, i64* %13, align 8
  %161 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %162 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %161, i32 0, i32 1
  store i64 0, i64* %162, align 8
  br label %65

163:                                              ; preds = %147, %144
  %164 = load i32, i32* %17, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  store i32 1, i32* %15, align 4
  %167 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %168 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %167, i32 0, i32 0
  store i32 1, i32* %168, align 8
  br label %169

169:                                              ; preds = %166, %163
  br label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %170, %114
  %172 = load i32, i32* %17, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %176 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  store i32 1, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %180

180:                                              ; preds = %179, %174, %171
  %181 = load i32, i32* %17, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* %15, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %183, %180
  %187 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %188 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %193 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* @M_FD_DIRBUF, align 4
  %196 = call i32 @FREE(i32* %194, i32 %195)
  %197 = load %struct.fd_vn_data*, %struct.fd_vn_data** %8, align 8
  %198 = getelementptr inbounds %struct.fd_vn_data, %struct.fd_vn_data* %197, i32 0, i32 3
  store i32* null, i32** %198, align 8
  br label %199

199:                                              ; preds = %191, %186, %183
  %200 = load i32, i32* %15, align 4
  %201 = load i32*, i32** %9, align 8
  store i32 %200, i32* %201, align 4
  %202 = load i32, i32* %17, align 4
  store i32 %202, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %203

203:                                              ; preds = %199, %41
  %204 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @FREE(i32*, i32) #1

declare dso_local i32 @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @MALLOC(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @uio_reset(i32, i32, i32, i32) #1

declare dso_local i32 @uio_addiov(i32, i32, i64) #1

declare dso_local i32 @CAST_USER_ADDR_T(i32*) #1

declare dso_local i32 @vnode_readdir64(i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i64 @uio_resid(i32) #1

declare dso_local i32 @uio_offset(i32) #1

declare dso_local i32 @bzero(i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
