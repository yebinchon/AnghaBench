; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_ecp_mod_koblitz.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_ecp_mod_koblitz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64* }

@P_KOBLITZ_MAX = common dso_local global i64 0, align 8
@P_KOBLITZ_R = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64*, i64, i64, i64, i64)* @ecp_mod_koblitz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mod_koblitz(%struct.TYPE_10__* %0, i64* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_10__, align 8
  %17 = alloca %struct.TYPE_10__, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %21 = load i64, i64* @P_KOBLITZ_MAX, align 8
  %22 = load i64, i64* @P_KOBLITZ_R, align 8
  %23 = add i64 %21, %22
  %24 = add i64 %23, 1
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %18, align 8
  %26 = alloca i64, i64 %24, align 16
  store i64 %24, i64* %19, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %211

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  store i32 1, i32* %34, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  store i64* %35, i64** %36, align 8
  %37 = load i64, i64* @P_KOBLITZ_R, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  store i32 1, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  store i64* %26, i64** %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = sub i64 %44, %45
  %47 = sub i64 %43, %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %51, %52
  %54 = icmp ugt i64 %50, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %33
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %56, %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %33
  %61 = mul nuw i64 8, %24
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memset(i64* %26, i32 0, i32 %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %11, align 8
  %70 = sub i64 0, %69
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = mul i64 %73, 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @memcpy(i64* %26, i64* %71, i32 %75)
  %77 = load i64, i64* %12, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %60
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @mbedtls_mpi_shift_r(%struct.TYPE_10__* %16, i64 %80)
  %82 = call i32 @MBEDTLS_MPI_CHK(i32 %81)
  br label %83

83:                                               ; preds = %79, %60
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, %85
  store i64 %88, i64* %86, align 8
  %89 = load i64, i64* %13, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %83
  %92 = load i64, i64* %13, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = sub i64 %96, 1
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = and i64 %99, %92
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %91, %83
  %102 = load i64, i64* %10, align 8
  store i64 %102, i64* %15, align 8
  br label %103

103:                                              ; preds = %115, %101
  %104 = load i64, i64* %15, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %104, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* %15, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %109
  %116 = load i64, i64* %15, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %15, align 8
  br label %103

118:                                              ; preds = %103
  %119 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_10__* %16, %struct.TYPE_10__* %16, %struct.TYPE_10__* %17)
  %120 = call i32 @MBEDTLS_MPI_CHK(i32 %119)
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %123 = call i32 @mbedtls_mpi_add_abs(%struct.TYPE_10__* %121, %struct.TYPE_10__* %122, %struct.TYPE_10__* %16)
  %124 = call i32 @MBEDTLS_MPI_CHK(i32 %123)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %10, align 8
  %129 = load i64, i64* %11, align 8
  %130 = sub i64 %128, %129
  %131 = sub i64 %127, %130
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i64 %131, i64* %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load i64, i64* %11, align 8
  %137 = add i64 %135, %136
  %138 = icmp ugt i64 %134, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %118
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* %11, align 8
  %142 = add i64 %140, %141
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i64 %142, i64* %143, align 8
  br label %144

144:                                              ; preds = %139, %118
  %145 = mul nuw i64 8, %24
  %146 = trunc i64 %145 to i32
  %147 = call i32 @memset(i64* %26, i32 0, i32 %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 2
  %150 = load i64*, i64** %149, align 8
  %151 = load i64, i64* %10, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  %153 = load i64, i64* %11, align 8
  %154 = sub i64 0, %153
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = mul i64 %157, 8
  %159 = trunc i64 %158 to i32
  %160 = call i32 @memcpy(i64* %26, i64* %155, i32 %159)
  %161 = load i64, i64* %12, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %144
  %164 = load i64, i64* %12, align 8
  %165 = call i32 @mbedtls_mpi_shift_r(%struct.TYPE_10__* %16, i64 %164)
  %166 = call i32 @MBEDTLS_MPI_CHK(i32 %165)
  br label %167

167:                                              ; preds = %163, %144
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = add i64 %171, %169
  store i64 %172, i64* %170, align 8
  %173 = load i64, i64* %13, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %167
  %176 = load i64, i64* %13, align 8
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 2
  %179 = load i64*, i64** %178, align 8
  %180 = load i64, i64* %10, align 8
  %181 = sub i64 %180, 1
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = and i64 %183, %176
  store i64 %184, i64* %182, align 8
  br label %185

185:                                              ; preds = %175, %167
  %186 = load i64, i64* %10, align 8
  store i64 %186, i64* %15, align 8
  br label %187

187:                                              ; preds = %199, %185
  %188 = load i64, i64* %15, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ult i64 %188, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %187
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 2
  %196 = load i64*, i64** %195, align 8
  %197 = load i64, i64* %15, align 8
  %198 = getelementptr inbounds i64, i64* %196, i64 %197
  store i64 0, i64* %198, align 8
  br label %199

199:                                              ; preds = %193
  %200 = load i64, i64* %15, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %15, align 8
  br label %187

202:                                              ; preds = %187
  %203 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_10__* %16, %struct.TYPE_10__* %16, %struct.TYPE_10__* %17)
  %204 = call i32 @MBEDTLS_MPI_CHK(i32 %203)
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %207 = call i32 @mbedtls_mpi_add_abs(%struct.TYPE_10__* %205, %struct.TYPE_10__* %206, %struct.TYPE_10__* %16)
  %208 = call i32 @MBEDTLS_MPI_CHK(i32 %207)
  br label %209

209:                                              ; preds = %202
  %210 = load i32, i32* %14, align 4
  store i32 %210, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %211

211:                                              ; preds = %209, %32
  %212 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load i32, i32* %7, align 4
  ret i32 %213
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #2

declare dso_local i32 @mbedtls_mpi_shift_r(%struct.TYPE_10__*, i64) #2

declare dso_local i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*) #2

declare dso_local i32 @mbedtls_mpi_add_abs(%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
