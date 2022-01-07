; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_mcast.c_imo_clone.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_mcast.c_imo_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }
%struct.ip_moptions = type { i32, i64, %struct.TYPE_4__**, %struct.in_mfilter*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.in_mfilter = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imo_clone(%struct.inpcb* %0, %struct.inpcb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_moptions*, align 8
  %9 = alloca %struct.ip_moptions*, align 8
  %10 = alloca %struct.in_mfilter*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.inpcb* %1, %struct.inpcb** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %12 = call %struct.ip_moptions* @inp_findmoptions(%struct.inpcb* %11)
  store %struct.ip_moptions* %12, %struct.ip_moptions** %8, align 8
  %13 = load %struct.ip_moptions*, %struct.ip_moptions** %8, align 8
  %14 = icmp eq %struct.ip_moptions* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  store i32 %16, i32* %3, align 4
  br label %221

17:                                               ; preds = %2
  %18 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %19 = call %struct.ip_moptions* @inp_findmoptions(%struct.inpcb* %18)
  store %struct.ip_moptions* %19, %struct.ip_moptions** %9, align 8
  %20 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %21 = icmp eq %struct.ip_moptions* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.ip_moptions*, %struct.ip_moptions** %8, align 8
  %24 = call i32 @IMO_REMREF(%struct.ip_moptions* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %3, align 4
  br label %221

26:                                               ; preds = %17
  %27 = load %struct.ip_moptions*, %struct.ip_moptions** %8, align 8
  %28 = call i32 @IMO_LOCK(%struct.ip_moptions* %27)
  %29 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %30 = call i32 @IMO_LOCK(%struct.ip_moptions* %29)
  %31 = load %struct.ip_moptions*, %struct.ip_moptions** %8, align 8
  %32 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %35 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ip_moptions*, %struct.ip_moptions** %8, align 8
  %37 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %40 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ip_moptions*, %struct.ip_moptions** %8, align 8
  %42 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %45 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ip_moptions*, %struct.ip_moptions** %8, align 8
  %47 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %50 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %107, %26
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %54 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %110

57:                                               ; preds = %51
  %58 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %59 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %58, i32 0, i32 3
  %60 = load %struct.in_mfilter*, %struct.in_mfilter** %59, align 8
  %61 = icmp ne %struct.in_mfilter* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %64 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %63, i32 0, i32 3
  %65 = load %struct.in_mfilter*, %struct.in_mfilter** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %65, i64 %67
  br label %70

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %62
  %71 = phi %struct.in_mfilter* [ %68, %62 ], [ null, %69 ]
  store %struct.in_mfilter* %71, %struct.in_mfilter** %10, align 8
  %72 = load %struct.in_mfilter*, %struct.in_mfilter** %10, align 8
  %73 = icmp ne %struct.in_mfilter* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.in_mfilter*, %struct.in_mfilter** %10, align 8
  %76 = call i32 @imf_leave(%struct.in_mfilter* %75)
  br label %77

77:                                               ; preds = %74, %70
  %78 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %79 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %80, i64 %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load %struct.in_mfilter*, %struct.in_mfilter** %10, align 8
  %86 = call i32 @in_leavegroup(%struct.TYPE_4__* %84, %struct.in_mfilter* %85)
  %87 = load %struct.in_mfilter*, %struct.in_mfilter** %10, align 8
  %88 = icmp ne %struct.in_mfilter* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %77
  %90 = load %struct.in_mfilter*, %struct.in_mfilter** %10, align 8
  %91 = call i32 @imf_purge(%struct.in_mfilter* %90)
  br label %92

92:                                               ; preds = %89, %77
  %93 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %94 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %95, i64 %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = call i32 @INM_REMREF(%struct.TYPE_4__* %99)
  %101 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %102 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %103, i64 %105
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %106, align 8
  br label %107

107:                                              ; preds = %92
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %51

110:                                              ; preds = %51
  %111 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %112 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  %113 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %114 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load %struct.ip_moptions*, %struct.ip_moptions** %8, align 8
  %119 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br label %122

122:                                              ; preds = %117, %110
  %123 = phi i1 [ false, %110 ], [ %121, %117 ]
  %124 = zext i1 %123 to i32
  %125 = call i32 @VERIFY(i32 %124)
  %126 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %127 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.ip_moptions*, %struct.ip_moptions** %8, align 8
  %130 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp slt i64 %128, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %122
  %134 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %135 = load %struct.ip_moptions*, %struct.ip_moptions** %8, align 8
  %136 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @imo_grow(%struct.ip_moptions* %134, i64 %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %211

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %122
  %144 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %145 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.ip_moptions*, %struct.ip_moptions** %8, align 8
  %148 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp sge i64 %146, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @VERIFY(i32 %151)
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %198, %143
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.ip_moptions*, %struct.ip_moptions** %8, align 8
  %156 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %201

159:                                              ; preds = %153
  %160 = load %struct.ip_moptions*, %struct.ip_moptions** %8, align 8
  %161 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %160, i32 0, i32 2
  %162 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %162, i64 %164
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load %struct.ip_moptions*, %struct.ip_moptions** %8, align 8
  %169 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %168, i32 0, i32 2
  %170 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %170, i64 %172
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call %struct.TYPE_4__* @in_addmulti(i32* %167, i32 %176)
  %178 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %179 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %178, i32 0, i32 2
  %180 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %180, i64 %182
  store %struct.TYPE_4__* %177, %struct.TYPE_4__** %183, align 8
  %184 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %185 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %184, i32 0, i32 2
  %186 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %186, i64 %188
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = icmp eq %struct.TYPE_4__* %190, null
  br i1 %191, label %192, label %193

192:                                              ; preds = %159
  br label %201

193:                                              ; preds = %159
  %194 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %195 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 8
  br label %198

198:                                              ; preds = %193
  %199 = load i32, i32* %6, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %6, align 4
  br label %153

201:                                              ; preds = %192, %153
  %202 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %203 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.ip_moptions*, %struct.ip_moptions** %8, align 8
  %206 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp eq i32 %204, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @VERIFY(i32 %209)
  br label %211

211:                                              ; preds = %201, %141
  %212 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %213 = call i32 @IMO_UNLOCK(%struct.ip_moptions* %212)
  %214 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  %215 = call i32 @IMO_REMREF(%struct.ip_moptions* %214)
  %216 = load %struct.ip_moptions*, %struct.ip_moptions** %8, align 8
  %217 = call i32 @IMO_UNLOCK(%struct.ip_moptions* %216)
  %218 = load %struct.ip_moptions*, %struct.ip_moptions** %8, align 8
  %219 = call i32 @IMO_REMREF(%struct.ip_moptions* %218)
  %220 = load i32, i32* %7, align 4
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %211, %22, %15
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local %struct.ip_moptions* @inp_findmoptions(%struct.inpcb*) #1

declare dso_local i32 @IMO_REMREF(%struct.ip_moptions*) #1

declare dso_local i32 @IMO_LOCK(%struct.ip_moptions*) #1

declare dso_local i32 @imf_leave(%struct.in_mfilter*) #1

declare dso_local i32 @in_leavegroup(%struct.TYPE_4__*, %struct.in_mfilter*) #1

declare dso_local i32 @imf_purge(%struct.in_mfilter*) #1

declare dso_local i32 @INM_REMREF(%struct.TYPE_4__*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @imo_grow(%struct.ip_moptions*, i64) #1

declare dso_local %struct.TYPE_4__* @in_addmulti(i32*, i32) #1

declare dso_local i32 @IMO_UNLOCK(%struct.ip_moptions*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
