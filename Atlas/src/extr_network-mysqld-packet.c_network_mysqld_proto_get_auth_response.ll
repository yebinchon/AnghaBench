; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_auth_response.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_auth_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i8* }

@CLIENT_PROTOCOL_41 = common dso_local global i32 0, align 4
@CLIENT_SECURE_CONNECTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_get_auth_response(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = call i64 @network_mysqld_proto_peek_int16(%struct.TYPE_18__* %11, i32* %7)
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ true, %2 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %244

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @CLIENT_PROTOCOL_41, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %176

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = call i64 @network_mysqld_proto_get_int32(%struct.TYPE_18__* %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %28, %25
  %35 = phi i1 [ true, %25 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = call i64 @network_mysqld_proto_get_int32(%struct.TYPE_18__* %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %39, %34
  %46 = phi i1 [ true, %34 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 5
  %54 = call i64 @network_mysqld_proto_get_int8(%struct.TYPE_18__* %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %50, %45
  %57 = phi i1 [ true, %45 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = call i64 @network_mysqld_proto_skip(%struct.TYPE_18__* %62, i32 23)
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %61, %56
  %66 = phi i1 [ true, %56 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @network_mysqld_proto_get_gstring(%struct.TYPE_18__* %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br label %77

77:                                               ; preds = %70, %65
  %78 = phi i1 [ true, %65 ], [ %76, %70 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %6, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CLIENT_SECURE_CONNECTION, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %77
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @network_mysqld_proto_get_lenenc_gstring(%struct.TYPE_18__* %90, i32 %93)
  %95 = icmp ne i64 %94, 0
  br label %96

96:                                               ; preds = %89, %86
  %97 = phi i1 [ true, %86 ], [ %95, %89 ]
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %6, align 4
  br label %112

99:                                               ; preds = %77
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @network_mysqld_proto_get_gstring(%struct.TYPE_18__* %103, i32 %106)
  %108 = icmp ne i64 %107, 0
  br label %109

109:                                              ; preds = %102, %99
  %110 = phi i1 [ true, %99 ], [ %108, %102 ]
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %109, %96
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %115, %120
  br i1 %121, label %122, label %175

122:                                              ; preds = %112
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %141, label %125

125:                                              ; preds = %122
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = sub nsw i64 %131, %134
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = call i64 @network_mysqld_proto_get_gstring_len(%struct.TYPE_18__* %126, i64 %135, %struct.TYPE_16__* %138)
  %140 = icmp ne i64 %139, 0
  br label %141

141:                                              ; preds = %125, %122
  %142 = phi i1 [ true, %122 ], [ %140, %125 ]
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %6, align 4
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %174

150:                                              ; preds = %141
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %155, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %150
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 4
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %167, %150, %141
  br label %175

175:                                              ; preds = %174, %112
  br label %239

176:                                              ; preds = %20
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %181 = call i64 @network_mysqld_proto_get_int16(%struct.TYPE_18__* %180, i32* %7)
  %182 = icmp ne i64 %181, 0
  br label %183

183:                                              ; preds = %179, %176
  %184 = phi i1 [ true, %176 ], [ %182, %179 ]
  %185 = zext i1 %184 to i32
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %183
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 1
  %192 = call i64 @network_mysqld_proto_get_int24(%struct.TYPE_18__* %189, i32* %191)
  %193 = icmp ne i64 %192, 0
  br label %194

194:                                              ; preds = %188, %183
  %195 = phi i1 [ true, %183 ], [ %193, %188 ]
  %196 = zext i1 %195 to i32
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* %6, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %206, label %199

199:                                              ; preds = %194
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @network_mysqld_proto_get_gstring(%struct.TYPE_18__* %200, i32 %203)
  %205 = icmp ne i64 %204, 0
  br label %206

206:                                              ; preds = %199, %194
  %207 = phi i1 [ true, %194 ], [ %205, %199 ]
  %208 = zext i1 %207 to i32
  store i32 %208, i32* %6, align 4
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %213, %216
  br i1 %217, label %218, label %231

218:                                              ; preds = %206
  %219 = load i32, i32* %6, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %228, label %221

221:                                              ; preds = %218
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i64 @network_mysqld_proto_get_gstring(%struct.TYPE_18__* %222, i32 %225)
  %227 = icmp ne i64 %226, 0
  br label %228

228:                                              ; preds = %221, %218
  %229 = phi i1 [ true, %218 ], [ %227, %221 ]
  %230 = zext i1 %229 to i32
  store i32 %230, i32* %6, align 4
  br label %231

231:                                              ; preds = %228, %206
  %232 = load i32, i32* %6, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* %7, align 4
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  br label %238

238:                                              ; preds = %234, %231
  br label %239

239:                                              ; preds = %238, %175
  %240 = load i32, i32* %6, align 4
  %241 = icmp ne i32 %240, 0
  %242 = zext i1 %241 to i64
  %243 = select i1 %241, i32 -1, i32 0
  store i32 %243, i32* %3, align 4
  br label %244

244:                                              ; preds = %239, %19
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local i64 @network_mysqld_proto_peek_int16(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @network_mysqld_proto_get_int32(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @network_mysqld_proto_get_int8(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @network_mysqld_proto_skip(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @network_mysqld_proto_get_gstring(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @network_mysqld_proto_get_lenenc_gstring(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @network_mysqld_proto_get_gstring_len(%struct.TYPE_18__*, i64, %struct.TYPE_16__*) #1

declare dso_local i64 @network_mysqld_proto_get_int16(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @network_mysqld_proto_get_int24(%struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
