; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_cp_pipe_from_user_64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_cp_pipe_from_user_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockopt = type { i32 }
%struct.dn_pipe = type { %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dn_pipe_64 = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cp_pipe_from_user_64(%struct.sockopt* %0, %struct.dn_pipe* %1) #0 {
  %3 = alloca %struct.sockopt*, align 8
  %4 = alloca %struct.dn_pipe*, align 8
  %5 = alloca %struct.dn_pipe_64, align 4
  %6 = alloca i32, align 4
  store %struct.sockopt* %0, %struct.sockopt** %3, align 8
  store %struct.dn_pipe* %1, %struct.dn_pipe** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.sockopt*, %struct.sockopt** %3, align 8
  %8 = call i32 @sooptcopyin(%struct.sockopt* %7, %struct.dn_pipe_64* %5, i32 132, i32 132)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %195, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 9
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %15 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %14, i32 0, i32 9
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %19 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 4
  %20 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %23 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %27 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %31 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %35 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %39 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %43 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFNAMSIZ, align 4
  %46 = call i32 @bcopy(i32 %41, i32 %44, i32 %45)
  %47 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %50 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 23
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %55 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 23
  store i32 %53, i32* %56, align 4
  %57 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 22
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %61 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 22
  store i32 %59, i32* %62, align 4
  %63 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 21
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %67 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 21
  store i32 %65, i32* %68, align 4
  %69 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 20
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %73 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 20
  store i32 %71, i32* %74, align 4
  %75 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 19
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %79 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 19
  store i32 %77, i32* %80, align 4
  %81 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 18
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %85 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 18
  store i32 %83, i32* %86, align 4
  %87 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 17
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %91 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 17
  store i32 %89, i32* %92, align 4
  %93 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 16
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %97 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 16
  store i32 %95, i32* %98, align 4
  %99 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 15
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %103 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 15
  store i32 %101, i32* %104, align 4
  %105 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 14
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %109 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 14
  store i32 %107, i32* %110, align 4
  %111 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 13
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %115 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 13
  store i32 %113, i32* %116, align 4
  %117 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 12
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %121 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 12
  store i32 %119, i32* %122, align 4
  %123 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 11
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %127 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 11
  store i32 %125, i32* %128, align 4
  %129 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 10
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %133 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 10
  store i32 %131, i32* %134, align 4
  %135 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %139 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 9
  store i32 %137, i32* %140, align 4
  %141 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %145 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 8
  store i32 %143, i32* %146, align 4
  %147 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %151 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 7
  store i32 %149, i32* %152, align 4
  %153 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %157 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 6
  store i32 %155, i32* %158, align 4
  %159 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %163 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 5
  store i32 %161, i32* %164, align 4
  %165 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %169 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 4
  store i32 %167, i32* %170, align 4
  %171 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %175 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 3
  store i32 %173, i32* %176, align 4
  %177 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %181 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 2
  store i32 %179, i32* %182, align 4
  %183 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %187 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  store i32 %185, i32* %188, align 4
  %189 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %5, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %193 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  store i32 %191, i32* %194, align 4
  br label %195

195:                                              ; preds = %11, %2
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local i32 @sooptcopyin(%struct.sockopt*, %struct.dn_pipe_64*, i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
